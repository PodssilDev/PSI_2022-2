close all

%% reducir el tamaño de una imagen
img=imread('chicago.png');
img=img(1:500,1:500);
J = zeros(100,100,'uint8');
for i=1:100
    for j=1:100
        J(i,j) = img(5*i,5*j);
    end
end
figure,
subplot(1,2,1),imshow(img), title('original');
subplot(1,2,1),imshow(J), title('500x500 > 100x100');

%% Métodos para aumentar tamaño de imagen
img=imread('onerice.bmp');
[N,M]=size(img);

% vecino más cercano
J1=imresize(img,2,'nearest');

% interpolacion bilineal
J2=imresize(img,2,'bilinear');

% interpolacion bicubica
J3=imresize(img,2,'bicubic');

figure,
subplot(2,2,1), imshow(img), axis on, title('original 64x64')
subplot(2,2,2), imshow(J1), axis on, title('128x128 (pixel más cercano)');
subplot(2,2,3), imshow(J2), axis on, title('128x128 (interpolación bilineal)');
subplot(2,2,4), imshow(J3), axis on, title('128x128 (interpolación bicubica)');









