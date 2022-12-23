rgb = imread('pears.png');
I = rgb2gray(rgb);
figure, imshow(I), title('original');

%Use the Gradient Magnitude as the Segmentation Function
gmag = imgradient(I);
figure, imshow(gmag,[]), title('Gradient Magnitude')

% sin pre-procesamiento --> sobre segmentacion
L = watershed(gmag);
figure, imshow(L), title('Watershed Transform of Gradient Magnitude')

