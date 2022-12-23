im=imread('moon.tif');
mask=fspecial('unsharp')
ip=imfilter(im,mask);
figure, 
subplot(1,2,1), imshow(im), title('original');
subplot(1,2,2), imshow(ip), title('procesada');
