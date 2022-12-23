i=imread('louvre.png');

[hog1,visualization] = extractHOGFeatures(i,'CellSize',[32 32]);

figure,
subplot(1,2,1), imshow(i), title('imagen original')
subplot(1,2,2), plot(visualization), title('HoG features');

cornersHarris = detectHarrisFeatures(i);
strongest = selectStrongest(cornersHarris,4);
[hog2, validPoints,ptVis] = extractHOGFeatures(i,strongest);

figure, 
imshow(i), title('descriptor HoG'), hold on, plot(ptVis,'Color','green'), hold off;

