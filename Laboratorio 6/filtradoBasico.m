w=[1/9 1/9 1/9
   1/9 1/9 1/9
   1/9 1/9 1/9]
i=imread('Q2_2.tif');
ip=imfilter(i, w);
figure
subplot(1,2,1),imshow(i),title('original');
subplot(1,2,2),imshow(ip),title('filtrada');