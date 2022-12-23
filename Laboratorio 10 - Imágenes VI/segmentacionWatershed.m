rgb = imread('pears.png');
I = rgb2gray(rgb);

%% Step1: Use the Gradient Magnitude as the Segmentation Function
gmag = imgradient(I);
figure, 
subplot(1,2,1), imshow(I), title('original');
subplot(1,2,2), imshow(gmag,[]), title('Gradient Magnitude')

%% Step2: Mark the Foreground Objects
se = strel('disk',20);
Ie = imerode(I,se);
Iobr = imreconstruct(Ie,I);
Iobrd = imdilate(Iobr,se);
Iobrcbr = imreconstruct(imcomplement(Iobrd),imcomplement(Iobr));
Iobrcbr = imcomplement(Iobrcbr);
fgm = imregionalmax(Iobrcbr);
I2 = labeloverlay(I,fgm);

%% Step3: Compute Background Markers
bw = imbinarize(Iobrcbr);
D = bwdist(bw);
DL = watershed(D);
bgm = DL == 0;
I3 = labeloverlay(I,bgm,'Transparency',0);

figure, 
subplot(1,2,1), imshow(I2), title('Step2: Foreground markers')
subplot(1,2,2), imshow(I3), title('Step3: Background markers')

%% Step4: Compute the Watershed Transform of the Segmentation Function.
gmag2 = imimposemin(gmag,bgm|fgm); %modify the gradient magnitude image so that its only regional minima occur at foreground and background marker pixels.
L = watershed(gmag2);
Lrgb = label2rgb(L,'jet','w','shuffle');

figure, 
subplot(1,2,1), imshow(Lrgb), title('Watershed label matrix')
subplot(1,2,2), imshow(I), hold on,
himage = imshow(Lrgb);
himage.AlphaData = 0.3;
title('Labels with transparency')