i=imread('recorte_219.tif');

umbralO=graythresh(i);
ib1=imbinarize(i,umbralO);

umbralA=adaptthresh(i,'NeighborhoodSize',[5 5]);
ib2=imbinarize(i,1-umbralA);

figure, 
subplot(1,3,1), imshow(i), title('original'); 
subplot(1,3,2), imshow(ib1), title('Otsu');
subplot(1,3,3), imshow(ib2), title('Adaptativo');
