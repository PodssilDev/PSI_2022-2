i = imread('circles.png');
ib2 = bwmorph(i,'remove');
ib3 = bwmorph(i,'skel',Inf);
figure,
subplot(1,3,1),imshow(i),title('original')
subplot(1,3,2),imshow(ib2),title('OM: remove')
subplot(1,3,3),imshow(ib3),title('OM: skel')