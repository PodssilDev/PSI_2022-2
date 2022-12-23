i = imread('coins.png');
ib1 = edge(i,'Roberts');
ib2 = edge(i,'Prewitt');
ib3 = edge(i,'Sobel');
ib4 = edge(i,'LoG');
ib5 = edge(i,'Canny');

figure
subplot(2,3,1), imshow(i), title('original');
subplot(2,3,2), imshow(ib1), title('Roberts');
subplot(2,3,3), imshow(ib2), title('Prewitt');
subplot(2,3,4), imshow(ib3), title('Sobel');
subplot(2,3,5), imshow(ib4), title('LoG');
subplot(2,3,6), imshow(ib5), title('Canny');