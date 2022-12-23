i=imread('louvre.png');
points = detectSURFFeatures(i);
[features, valid_points] = extractFeatures(i, points);

figure, 
imshow(i), title('descriptor SURF'), hold on, plot(valid_points.selectStrongest(10),'showOrientation',true), hold off;
    
    