i = zeros(32,32);
i(10:16,10:16) = 1;
i(20,10) = 1;
i(25,25) = 1;
ip = bwmorph(i,'clean');
figure,
subplot(1,2,1),imshow(i),title('original')
subplot(1,2,2),imshow(ip),title('OM: clean')