i=imread('pout.tif');
id = double(i);
imin = min(min(id))
imax = max(max(id))
idif = imax-imin
gd = (id-imin)/idif*255;
g = uint8(round(gd));
figure,
subplot(2,2,1), imshow(i),title('original');
subplot(2,2,2), imhist(i),title('histograma');
subplot(2,2,3), imshow(g),title('procesada');
subplot(2,2,4), imhist(g),title('histograma');