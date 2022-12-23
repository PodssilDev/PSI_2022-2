i=imread('mandrill.bmp');
i2=im2double(i);
ip1=1*log(1+i2);
ip2=2*log(1+i2);
ip3=5*log(1+i2);
figure,
subplot(2,2,1), imshow(i), title('original');
subplot(2,2,2), imshow(ip1), title('1 x log(1+original)');
subplot(2,2,3), imshow(ip2), title('2 x log(1+original)');
subplot(2,2,4), imshow(ip3), title('5 x log(1+original)');
