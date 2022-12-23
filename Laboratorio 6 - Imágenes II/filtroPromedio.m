i=imread('Q2_2.tif');

% ej 1
average1 = 1/11*ones(11,1)
ip1=imfilter(i,average1);
figure,
subplot(1,2,1), imshow(i), title('original');
subplot(1,2,2), imshow(ip1), title('Máscara de 1x11');                 

% ej 2
waverage=1/16*[1 2 1
               2 4 2
               1 2 1]
ip2=imfilter(i,waverage);
figure,
subplot(1,2,1), imshow(i), title('original');
subplot(1,2,2), imshow(ip2), title('Máscara de 3x3 ponderado');                 


% ej 3
average=fspecial('average',[11 11])
ip3=imfilter(i,average);
figure,
subplot(1,2,1), imshow(i), title('original');
subplot(1,2,2), imshow(ip3), title('Máscara de 11x11 con fspecial');                 

% ej 4
ip4 = imboxfilt(i,11);
figure,
subplot(1,2,1), imshow(i), title('original');
subplot(1,2,2), imshow(ip4), title('Máscara de 11x11 usando imboxfilt');