i=imread('coins.png');
[centros,radios,m] = imfindcircles(i,[15 30]); %radio entre 15 y 30 pixels
figure,
subplot(1,2,1), imshow(i), title('circ radio 15-30'), hold on,
viscircles(centros,radios,'EdgeColor','red'); 
hold off;

m
centrosF = centros(1:5,:); 
radiosF = radios(1:5);

subplot(1,2,2), imshow(i), title('*5* circ radio 15-30'), hold on,
viscircles(centrosF,radiosF,'EdgeColor','b'); 
hold off;