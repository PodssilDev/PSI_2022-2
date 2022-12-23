i  = imread('circuit.tif');
ib = edge(i,'canny');
[H,T,R] = hough(ib);
P  = houghpeaks(H,6);
figure,
imshow(H,[],'XData',T,'YData',R,'InitialMagnification','fit');
xlabel('\theta'), ylabel('\rho');
axis on, axis normal, hold on;
colormap(gca,hot);
plot(T(P(:,2)),R(P(:,1)),'s','color','white');