close all

[img,mp] = imread('chicago.png');
img = imresize(img,[256 256]);
figure, imshow(img), axis on, title('original')

[N M] = size(img);

%% Traslacion
tx = 60;
ty = 126;

% función disponible en Matlab
iT=imtranslate(img,[tx ty]);
figure, 
subplot(1,2,1), imshow(iT), axis on, title('imtraslate')

% calculado manualmente
iT = zeros(N,M);
for i=1:N
    for j=1:M
       ip = fix(i-ty);
       jp = fix(j-tx);
       if (jp>=1) && (jp<=M) && (ip>=1) && (ip<=N)
           iT(i,j) = img(ip,jp);
       end
   end
end
subplot(1,2,2), imshow(iT,mp), axis on, title('Traslacion')
           

%% Rotacion y traslacion de origen al centro de la imagen
th=30;
% función disponible en Matlab
iR1=imrotate(img,th,'crop');
iR2=imrotate(img,th,'loose');

figure, 
subplot(1,2,1), imshow(iR1), axis on, title('imrotate con crop')
subplot(1,2,2), imshow(iR2), axis on, title('imrotate sin crop')

%% Escalamiento
sx=0.5;
sy=0.5;
iS=imresize(img,sx);
figure, 
subplot(1,2,1), imshow(iS), axis on, title('imresize')

sx=2;
sy=3;
iS=imresize(img,'Scale',[sx sy]);
subplot(1,2,2), imshow(iS), axis on, title('imresize')

%% Similitud
s=1.2;       % factor escala
th=40*pi/180; % angulo de rotation
tx = 0;            % traslacion X
ty = 0;            % traslacion Y
sc = s*cos(th);
ss = s*sin(th);
T = [ sc -ss  0;
      ss  sc  0;
      tx  ty  1];
t_a = affine2d(T);
iAS = imwarp(img,t_a);
figure, 
imshow(iAS), axis on, title('similitud')

%% Proyeccion
th=10*pi/180;
T = [cos(th) -sin(th) 0.001;
     sin(th) cos(th)  0.01;
     0       0        1];
t_p = projective2d(T);
iP = imwarp(img,t_p);
figure, 
imshow(iP), axis on, title('proyeccion')
