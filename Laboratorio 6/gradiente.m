i = imread('circuit.tif');

% magnitud y dirección de gradiente con Prewitt
[gmag, gdir] = imgradient(i,'prewitt');
 
figure
subplot(1,3,1), imshow(i), title('original');
subplot(1,3,2), imshow(gmag), title('magnitud Prewitt');
subplot(1,3,3), imshow(gdir), title('dirección Prewitt');

[gx,gy] = imgradientxy(i,'sobel');
[gmag,gdir] = imgradient(gx,gy);
figure
subplot(2,3,1), imshow(i), title('original');
subplot(2,3,2), imshow(gx), title('gradiente en X');
subplot(2,3,3), imshow(gy), title('gradiente en Y');
subplot(2,3,4), imshow(imcomplement(gmag)), title('magnitud Sobel');
subplot(2,3,5), imshow(gdir), title('dirección Sobel');
