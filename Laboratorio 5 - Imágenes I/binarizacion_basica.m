i=imread('wheel.bmp');

umbral1 = 120;
ib1 = i>umbral1;
figure, 
subplot(1,2,1), imshow(i), title('original'); 
subplot(1,2,2), imshow(ib1), title('umbral=120');

umbral2 = 200;
ib2 = i>umbral2;
figure, 
subplot(1,2,1), imshow(i), title('original'); 
subplot(1,2,2), imshow(ib2), title('umbral=200');

