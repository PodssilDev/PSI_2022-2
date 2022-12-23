close all

i1 = rgb2gray(imread('viprectification_deskLeft.png'));
i2 = rgb2gray(imread('viprectification_deskRight.png'));

figure,
subplot(1,2,1), imshow(i1), title('imagen 1')
subplot(1,2,2), imshow(i2), title('imagen 2')

cornersHarris1 = detectHarrisFeatures(i1);
[hog1, points1] = extractHOGFeatures(i1,cornersHarris1);

cornersHarris2 = detectHarrisFeatures(i2);
[hog2, points2] = extractHOGFeatures(i2,cornersHarris2);

indexPairs = matchFeatures(hog1,hog2) ;
matchedPoints1 = points1(indexPairs(:,1));
matchedPoints2 = points2(indexPairs(:,2));

figure,
showMatchedFeatures(i1,i2,matchedPoints1,matchedPoints2);
legend('matched points 1','matched points 2');