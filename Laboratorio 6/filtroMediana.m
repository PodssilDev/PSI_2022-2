i=rgb2gray(imread('lab3imagen2.jpg'));

insp=imnoise(i,'salt & pepper'); 
ip1= medfilt2(insp);
figure,
subplot(1,3,1), imshow(i), title('original');
subplot(1,3,2), imshow(insp), title('con ruido S&P');
subplot(1,3,3), imshow(ip1), title('filtro mediana');

ing=imnoise(i,'gaussian'); 
ip2= medfilt2(ing);
figure,
subplot(1,3,1), imshow(i), title('original');
subplot(1,3,2), imshow(ing), title('con ruido gaussiano');
subplot(1,3,3), imshow(ip2), title('filtro mediana');

