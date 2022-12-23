i = zeros(32,32);
i(16,10:24) = 1;
i(16,16) = 0;
ip = bwmorph(i,'bridge');
figure,
subplot(1,2,1),imshow(i),title('original')
subplot(1,2,2),imshow(ip),title('OM: bridge')