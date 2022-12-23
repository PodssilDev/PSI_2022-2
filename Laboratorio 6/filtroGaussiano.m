%%  parameters effect
im=imread('lab3imagen3.jpg');
hsize = 10;
sigma = 5;
mask = fspecial('gaussian', hsize, sigma);
ip=imfilter(im,mask);
figure,
subplot(1,3,1), imshow(im), title('original');
subplot(1,3,2), imshow(ip), title('filtro gaussiano');
subplot(1,3,3), mesh(mask);

% Apply Gaussian Smoothing Filters to Images
blur1 = imgaussfilt(im,2);
blur2 = imgaussfilt(im,4);
blur3 = imgaussfilt(im,8);
figure, 
subplot(1,3,1), imshow(blur1), title('sigma=2');
subplot(1,3,2), imshow(blur2), title('sigma=4');
subplot(1,3,3), imshow(blur3), title('sigma=8');


