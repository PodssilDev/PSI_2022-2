% Evaluaciones de las tres funciones con los mismos parametros, para así
% poder realizar una comparación lado a lado

titulo1 = 'Perona-Malik 1';
titulo2 = 'Perona-Malik 2';
titulo3 = 'Charbonnier';

%------------------------------------------------------------------------------
% Prueba imágen 1: Iteraciones = 30, Lambda = 0.25, K = 10
%------------------------------------------------------------------------------
% Se lee la primera imagen
imagen1 = imread("byakuren.jpg");
% Se transforma la imagen a una escala de grises
imagen1 = im2gray(imagen1);
% Se le aplica rudio gaussiano a la imagen
imagen1 = imnoise(imagen1,'gaussian');

% Se inicializa una figura
figure();
% Se recorre por cada gráfico
for n_plot = 1:3
    % Se calcula la imagen resultante con cada función
    imagen_salida1 = difusion_anisotropica(imagen1, 30, 0.25, 10, n_plot);
    % Si es la primera iteración, se debe mostrar la imagen original
    if n_plot == 1
        subplot(2,2,1), imshow(imagen1), title("Original (Ruido)")
    end
    % Se asigna la función correspondiente a la figura
    if n_plot == 1
        titulo = titulo1;
    elseif n_plot == 2
        titulo = titulo2;
    elseif n_plot == 3
        titulo = titulo3;
    end
    % Se muestra la figura con todas las imagenes
    subplot(2,2,n_plot+1), imshow(imagen_salida1), title(titulo);
end
% Se asigna el titulo indicando las entradas utilizadas
sgtitle('Iteraciones = 30, Lambda = 0.25, K = 10') 


%------------------------------------------------------------------------------
% Prueba imágen 2: Iteraciones = 10, Lambda = 0.25, K = 90
%------------------------------------------------------------------------------
% Se lee la segunda imagen
imagen2 = imread("link.jpg");
% Se transforma la imagen a una escala de grises
imagen2 = im2gray(imagen2);
% Se le aplica rudio gaussiano a la imagen
imagen2 = imnoise(imagen2,'gaussian');

% Se inicializa una figura
figure();
% Se recorre por cada gráfico
for n_plot = 1:3
    % Se calcula la imagen resultante con cada función
    imagen_salida2 = difusion_anisotropica(imagen2, 10, 0.25, 90, n_plot);
    % Si es la primera iteración, se debe mostrar la imagen original
    if n_plot == 1
        subplot(2,2,1), imshow(imagen2), title("Original (Ruido)")
    end
    % Se asigna la función correspondiente a la figura
    if n_plot == 1
        titulo = titulo1;
    elseif n_plot == 2
        titulo = titulo2;
    elseif n_plot == 3
        titulo = titulo3;
    end
    % Se muestra la figura con todas las imagenes
    subplot(2,2,n_plot+1), imshow(imagen_salida2), title(titulo);
end
% Se asigna el titulo indicando las entradas utilizadas
sgtitle('Iteraciones = 20, Lambda = 0.25, K = 90') 

%------------------------------------------------------------------------------
% Prueba imágen 3: Iteraciones = 35, Lambda = 0.01, K = 45
%------------------------------------------------------------------------------

% Se lee la tercera imagen
imagen3 = imread("tenshi.jpg");
% Se transforma la imagen a una escala de grises
imagen3 = im2gray(imagen3);
% Se le aplica rudio gaussiano a la imagen
imagen3 = imnoise(imagen3,'gaussian');

% Se inicializa una figura
figure();
% Se recorre por cada gráfico
for n_plot = 1:3
     % Se calcula la imagen resultante con cada función
    imagen_salida3 = difusion_anisotropica(imagen3, 35, 0.01, 45, n_plot);
    if n_plot == 1
        % Si es la primera iteración, se debe mostrar la imagen original
        subplot(2,2,1), imshow(imagen3), title("Original (Ruido)")
    end
    % Se asigna la función correspondiente a la figura
    if n_plot == 1
        titulo = titulo1;
    elseif n_plot == 2
        titulo = titulo2;
    elseif n_plot == 3
        titulo = titulo3;
    end
    % Se muestra la figura con todas las imagenes
    subplot(2,2,n_plot+1), imshow(imagen_salida3), title(titulo);
end
% Se asigna el titulo indicando las entradas utilizadas
sgtitle('Iteraciones = 25, Lambda = 0.01, K = 15') 


%------------------------------------------------------------------------------
% Prueba imágen 4: Iteraciones = 5, Lambda = 0.25, K = 15
%------------------------------------------------------------------------------

% Se lee la cuarta imagen
imagen4 = imread("snake.jpg");
% Se transforma la imagen a una escala de grises
imagen4 = im2gray(imagen4);
% Se le aplica rudio gaussiano a la imagen
imagen4 = imnoise(imagen4,'gaussian');

% Se inicializa una figura
figure();
% Se recorre por cada gráfico
for n_plot = 1:3
    % Se calcula la imagen resultante con cada función
    imagen_salida4 = difusion_anisotropica(imagen4, 5, 0.25, 15, n_plot);
    if n_plot == 1
        % Si es la primera iteración, se debe mostrar la imagen original
        subplot(2,2,1), imshow(imagen4), title("Original (Ruido)")
    end
    % Se asigna la función correspondiente a la figura
    if n_plot == 1
        titulo = titulo1;
    elseif n_plot == 2
        titulo = titulo2;
    elseif n_plot == 3
        titulo = titulo3;
    end
    % Se muestra la figura con todas las imagenes
    subplot(2,2,n_plot+1), imshow(imagen_salida4), title(titulo);
end
% Se asigna el titulo indicando las entradas utilizadas
sgtitle('Iteraciones = 5, Lambda = 0.25, K = 15') 