i  = imread('louvre.png');
ib = edge(i,'canny');
[H,theta,rho] = hough(ib);
P = houghpeaks(H,12,'threshold',ceil(0.3*max(H(:))));
x = theta(P(:,2));
y = rho(P(:,1));
lineas = houghlines(ib,theta,rho,P,'FillGap',5,'MinLength',7);

figure,
subplot(1,2,1), imshow(i), title('original');
subplot(1,2,2), imshow(i), title('lineas detectadas'), hold on
max_largo = 0;
for k = 1:length(lineas)
   xy = [lineas(k).point1; lineas(k).point2];
   plot(xy(:,1),xy(:,2),'LineWidth',2,'Color','green');
end
hold off;