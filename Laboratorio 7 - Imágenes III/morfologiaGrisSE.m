i = imread('coins.png');
se = strel('disk',6);

ie = imerode(i,se);
id = imdilate(i,se);
io = imopen(i,se);
ic = imclose(i,se);

figure,
subplot(2,3,1),imshow(i),title('original')
subplot(2,3,2),imshow(ie),title('erosión')
subplot(2,3,3),imshow(id),title('dilatación')
subplot(2,3,5),imshow(io),title('apertura')
subplot(2,3,6),imshow(ic),title('clausura')