i=imread('lab3imagen3.jpg');
ig=rgb2gray(i);

% opción 1
gn=imnoise(ig,'gaussian');
figure,
subplot(1,2,1), imshow(ig), title('original');
subplot(1,2,2), imshow(gn), title('con ruido gaussiano');

% % opción 2
% media=0;
% varianza=0.05;
% ig=im2double(ig);
% gn=ig+(sqrt(varianza)*randn(size(ig)) + media);
% figure,
% subplot(1,2,1), imshow(ig), title('original');
% subplot(1,2,2), imshow(gn), title('con ruido gaussiano');
