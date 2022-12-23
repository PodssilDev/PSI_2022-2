i = imread('coins.png');
u = graythresh(i);
ig = imbinarize(i,u);
se = strel('disk',6);

ie = imerode(ig,se);
id = imdilate(ig,se);
io = imopen(ig,se);
ic = imclose(ig,se);

figure,
subplot(2,3,1),imshow(ig),title('original')
subplot(2,3,2),imshow(ie),title('erosión')
subplot(2,3,3),imshow(id),title('dilatación')
subplot(2,3,5),imshow(io),title('apertura')
subplot(2,3,6),imshow(ic),title('clausura')