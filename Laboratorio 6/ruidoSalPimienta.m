i=imread('lab3imagen1.jpg');
ig=rgb2gray(i);
ir=imnoise(ig,'salt & pepper'); 
figure
subplot(1,2,1),imshow(ig),title('original');
subplot(1,2,2),imshow(ir),title('sal y pimienta');


