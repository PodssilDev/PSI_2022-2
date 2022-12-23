i = imread('tire.tif');
ip1 = adapthisteq(i,'clipLimit',0.02,'Distribution','rayleigh');
figure,
subplot(1,2,1), imshow(i), title('original');
subplot(1,2,2), imshow(ip1), title('ecualizacion adaptativa');

i = imread('museo.jpg');
ig=rgb2gray(i);
ip2 = adapthisteq(ig,'clipLimit',0.01,'Distribution','rayleigh');
figure,
subplot(1,2,1), imshow(ig), title('original');
subplot(1,2,2), imshow(ip2), title('ecualizacion adaptativa');

i=imread('indoor.jpg');
ig=rgb2gray(i);
ip3 = adapthisteq(ig,'clipLimit',0.003);
figure,
subplot(1,2,1), imshow(ig), title('original');
subplot(1,2,2), imshow(ip3), title('ecualizacion adaptativa');