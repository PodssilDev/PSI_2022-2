i = zeros(32,32);
i(5:15,5:15) = 1;
i(6:14,6:14) = 0;
i(20:28,20:28) = 1;
i(21,26) = 0;
i(26,21) = 0;
i(20:23,10:12) = 1;
i(10:11,25:28) = 1;
original=i;
cc = bwconncomp(original);

s = regionprops(cc,'Centroid');
centroides = cat(1,s.Centroid);

numPixels = cellfun(@numel,cc.PixelIdxList);
[biggest,idx] = max(numPixels);
i(cc.PixelIdxList{idx}) = 0;

figure,
subplot(1,3,1),imshow(original),title('original')
subplot(1,3,2),imshow(original), hold on,
plot(centroides(:,1),centroides(:,2),'r*')
hold off, title('centroides');
subplot(1,3,3),imshow(i),title('sin mayor CC')