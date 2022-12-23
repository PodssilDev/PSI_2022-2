i = zeros(32,32);
i(5:15,5:15) = 1;
i(6:14,6:14) = 0;
i(20:28,20:28) = 1;
i(21,26) = 0;
i(26,21) = 0;
%ip = imfill(i,'holes');
figure,
subplot(1,2,1),imshow(i),title('original')
%subplot(1,2,2),imshow(ip),title('OM: fill')