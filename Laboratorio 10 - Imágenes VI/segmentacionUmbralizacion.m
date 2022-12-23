
i=imread('circlesBrightDark.png');
umbrales=multithresh(i,2);
seg_I=imquantize(i,umbrales);
regiones=label2rgb(seg_I);    

figure,
subplot(1,2,1), imshow(i), title('original')
subplot(1,2,2), imshow(regiones), title('imagen segmentada')


i=imread('wheel.bmp');
umbrales=multithresh(i,2);
seg_I=imquantize(i,umbrales);
regiones=label2rgb(seg_I);    

figure,
subplot(1,2,1), imshow(i), title('original')
subplot(1,2,2), imshow(regiones), title('imagen segmentada')


i=imread('Huevos.tif');
umbrales=multithresh(i,3);
seg_I=imquantize(i,umbrales);
regiones=label2rgb(seg_I);    

figure,
subplot(1,2,1), imshow(i), title('original')
subplot(1,2,2), imshow(regiones), title('imagen segmentada')