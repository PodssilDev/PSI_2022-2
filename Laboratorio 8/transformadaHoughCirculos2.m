i=imread('circlesBrightDark.png');
[centrosC, radiosC] = imfindcircles(i,[30 65],'ObjectPolarity','bright');
[centrosO, radiosO] = imfindcircles(i,[30 65],'ObjectPolarity','dark');

figure,
subplot(1,3,1), imshow(i), title('original'),
subplot(1,3,2), imshow(i), title('circ claros'),hold on,
viscircles(centrosC, radiosC,'Color','b'); hold off;
subplot(1,3,3), imshow(i), title('circ oscuros'),hold on,
viscircles(centrosO, radiosO,'LineStyle','--');
hold off;

