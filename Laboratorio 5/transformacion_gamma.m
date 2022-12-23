i=imread('drops.png');
ip1=imadjust(i,[],[],3);
ip2=imadjust(i,[],[],1);
ip3=imadjust(i,[],[],0.4);
figure,
subplot(2,2,1), imshow(i), title('original');
subplot(2,2,2), imshow(ip1), title('\gamma=3');
subplot(2,2,3), imshow(ip2), title('\gamma=1');
subplot(2,2,4), imshow(ip3), title('\gamma=0.4');
