i=imread('cameraman.tif'); 
%negativo=255-i; 
negativo=imcomplement(i);
figure,
subplot(1,2,1); imshow(i), title('original'); 
subplot(1,2,2); imshow(negativo), title('negativo');   
