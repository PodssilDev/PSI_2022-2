i=imread('louvre.png');
cornersHarris = detectHarrisFeatures(i);
cornersShi = detectMinEigenFeatures(i);

figure,
subplot(1,2,1), imshow(i), title('Harris corners'), hold on, plot(cornersHarris.selectStrongest(50)), hold off;
subplot(1,2,2), imshow(i), title('Shi-Tomasi corners'), hold on, plot(cornersShi.selectStrongest(50)), hold off;
