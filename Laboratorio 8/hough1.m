i  = imread('circuit.tif');
ib = edge(i,'canny');
[H,T,R] = hough(ib);

figure,
subplot(2,1,1), imshow(i,'InitialMagnification','fit'), title('original');
subplot(2,1,2), imshow(imadjust(rescale(H)),'XData',T,'YData',R,...
      'InitialMagnification','fit');
title('transformada de Hough');
xlabel('\theta'), ylabel('\rho');
axis on, axis normal, hold on;
colormap(gca,hot);
