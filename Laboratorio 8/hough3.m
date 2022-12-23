i  = imread('circuit.tif');
ib = edge(i,'canny'); 
[H,T,R] = hough(ib);
P  = houghpeaks(H,6);
lineas = houghlines(ib,T,R,P,'FillGap',5,'MinLength',7);
figure,
imshow(i), hold on
for k = 1:length(lineas)
 xy = [lineas(k).point1; lineas(k).point2];
 plot(xy(:,1),xy(:,2),'LineWidth',2,'Color','red');
end
hold off
