i = imread('seeds.jpg');
figure,
subplot(1,2,1), imshow(i),title('original');
subplot(1,2,2), imhist(i),title('histograma');

ip1 = imadjust(i);
figure;
subplot(1,2,1),imshow(ip1,[]),title('imadjust');
subplot(1,2,2),imhist(ip1),title('histograma');

ip2 = histeq(i);
figure;
subplot(1,2,1),imshow(ip2,[]),title('ecualización');
subplot(1,2,2),imhist(ip2),title('histograma');



