i=imread('lab3imagen2.jpg');
ig=rgb2gray(i);
[nf,nc]=size(ig);
nueva= randi([0 255],nf,nc);
sal =250;
ir=ig;
ir(nueva>=sal) = 255; 
figure,
subplot(1,2,1), imshow(ig), title('original');
subplot(1,2,2), imshow(ir), title('con ruido por impulso');
