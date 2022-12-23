i = imread('hands1.jpg'); 
ig = rgb2gray(i);

iGT = imread('hands1-mask.png');

umbral=graythresh(ig);
iSeg=imcomplement(im2bw(ig,umbral));

sim=dice(iSeg,iGT);

figure,
subplot(1,2,1), imshow(iSeg), title('Segmentación')
subplot(1,2,2), imshow(iGT), title('Ground Truth')
['Dice = ' num2str(sim)]