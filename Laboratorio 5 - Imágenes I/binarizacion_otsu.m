i=imread('wheel.bmp');
umbral=graythresh(i);
ib=imbinarize(i,umbral);

figure, 
subplot(1,2,1), imshow(i), title('original'); 
titulo=['umbral Otsu = ' int2str(umbral*255)];
subplot(1,2,2), imshow(ib), title(titulo);

