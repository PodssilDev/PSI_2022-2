h=[1 2 3
   4 5 6
   7 8 9];
h=h/45;
i=imread('Q2_2.tif');
icorr=imfilter(i,h);   % correlación por defecto
iconv=imfilter(i,h,'conv');  % convolución
figure
subplot(1,3,1), imshow(i), title('original');
subplot(1,3,2), imshow(icorr), title('correlación');
subplot(1,3,3), imshow(iconv), title('convolución');
