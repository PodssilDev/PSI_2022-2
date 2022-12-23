% Evaluaciones para el filtro de difusión anisotrópica con la primera
% función de difusión de Perona-Malik

%------------------------------------------------------------------------------
% Prueba imágen 1: Mismo número de lambda y k, distinta cantidad de iteraciones
%------------------------------------------------------------------------------

% Se lee la primera imagen
imagen1 = imread("byakuren.jpg");
% Se transforma la imagen a una escala de grises
imagen1 = im2gray(imagen1);
% Se le aplica rudio gaussiano a la imagen
imagen1 = imnoise(imagen1,'gaussian');
% Se realiza el llamado a la función de Perona-Malik 1 con distintas
% iteraciones
imagen_salida1_1 = difusion_anisotropica(imagen1,10,0.25,10,1);
imagen_salida1_2 = difusion_anisotropica(imagen1,20,0.25,10,1);
imagen_salida1_3 = difusion_anisotropica(imagen1,30,0.25,10,1);
imagen_salida1_4 = difusion_anisotropica(imagen1,40,0.25,10,1);
imagen_salida1_5 = difusion_anisotropica(imagen1,50,0.25,10,1);

% Se crea una fugura y se muestran las distintas imagenes para poder
% compararlas
figure;
subplot(3,2,1), imshow(imagen1), title('Original (Ruido)');
subplot(3,2,2), imshow(imagen_salida1_1), title('10 Iteraciones'); 
subplot(3,2,3), imshow(imagen_salida1_2), title('20 Iteraciones');
subplot(3,2,4), imshow(imagen_salida1_3), title('30 Iteraciones');
subplot(3,2,5), imshow(imagen_salida1_4), title('40 Iteraciones');
subplot(3,2,6), imshow(imagen_salida1_5), title('50 Iteraciones');
sgtitle('Perona-Malik 1: Lambda = 0.25, K = 10') 

%------------------------------------------------------------------------------
% Prueba imagen 2: Mismo número de iteraciones y lambda, distinto k
%------------------------------------------------------------------------------

% Se lee la segunda imagen
imagen2 = imread("link.jpg");
% Se transforma la imagen a una escala de grises
imagen2 = im2gray(imagen2);
% Se le aplica ruido gaussiano a la imagen
imagen2 = imnoise(imagen2,'gaussian');
% Se realiza el llamado a la función de Perona-Malik 1 con distinto K
imagen_salida2_1 = difusion_anisotropica(imagen2,30,0.25,10,1);
imagen_salida2_2 = difusion_anisotropica(imagen2,30,0.25,20,1);
imagen_salida2_3 = difusion_anisotropica(imagen2,30,0.25,30,1);
imagen_salida2_4 = difusion_anisotropica(imagen2,30,0.25,40,1);
imagen_salida2_5 = difusion_anisotropica(imagen2,30,0.25,50,1);

% Se crea una figura y se muestran las distintas imagenes para poder
% compararlas
figure;
subplot(3,2,1), imshow(imagen2), title('Original (Ruido)');
subplot(3,2,2), imshow(imagen_salida2_1), title('k = 10'); 
subplot(3,2,3), imshow(imagen_salida2_2), title('k = 20');
subplot(3,2,4), imshow(imagen_salida2_3), title('k = 30');
subplot(3,2,5), imshow(imagen_salida2_4), title('k = 40');
subplot(3,2,6), imshow(imagen_salida2_5), title('k = 50');
sgtitle('Perona-Malik 1: Iteraciones = 30, Lambda = 0.25');

%------------------------------------------------------------------------------
% Prueba imagen 3: Mismo número de iteraciones y k, distinto lambda
%------------------------------------------------------------------------------

% Se lee la tercera imagen
imagen3 = imread("tenshi.jpg");
% Se transforma la imagen a una escala de grises
imagen3 = im2gray(imagen3);
% Se aplica ruido gaussiano a la imagen
imagen3 = imnoise(imagen3,'gaussian');
% Se realiza el llamado a la función de Perona-Malik 1 con distinto Lambda,
% respetando que solo puede tomar valores hasta 0.25
imagen_salida3_1 = difusion_anisotropica(imagen3,30,0.05,10,1);
imagen_salida3_2 = difusion_anisotropica(imagen3,30,0.10,10,1);
imagen_salida3_3 = difusion_anisotropica(imagen3,30,0.15,10,1);
imagen_salida3_4 = difusion_anisotropica(imagen3,30,0.20,10,1);
imagen_salida3_5 = difusion_anisotropica(imagen3,30,0.25, 10,1);

% Se crea una figura y se muestran las distintas imagenes para poder
% compararlas
figure;
subplot(3,2,1), imshow(imagen3), title('Original (Ruido)');
subplot(3,2,2), imshow(imagen_salida3_1), title('lambda = 0.05'); 
subplot(3,2,3), imshow(imagen_salida3_2), title('lambda = 0.10');
subplot(3,2,4), imshow(imagen_salida3_3), title('lambda = 0.15');
subplot(3,2,5), imshow(imagen_salida3_4), title('lambda = 0.20');
subplot(3,2,6), imshow(imagen_salida3_5), title('lambda = 0.25');
sgtitle('Perona-Malik 1: Iteraciones = 30, k = 10');

%------------------------------------------------------------------------------
% Prueba imagen 4: Distintos valores para iteraciones, k y lambda
%------------------------------------------------------------------------------

% Para poder realizar el proceso de selección de valores aleatorios un poco
% mas amigable, se utiliza la función nativa randi() de Matlab. Además,
% para luego poder realizar una comparación adecuada, se establecen seeds
% (semillas) para que así se mantengan los valores aleatorios obtenidos
% cada vez que se ejecuta el código.

% Se lee la cuarta imagen
imagen4 = imread("snake.jpg");
% Se transforma a una escala de grises
imagen4 = im2gray(imagen4);
% Se le aplica ruido gaussiano a la imagen
imagen4 = imnoise(imagen4,'gaussian');
% Se inicia una figura para poder mostrar las imagenes
figure();
% Se itera desde 1 hasta 5 
for n_plot = 1:5
    % Se establece una seed por cada iteración
    if n_plot == 1
        rng(5378)
    elseif n_plot == 2
        rng(6461)
    elseif n_plot == 3
        rng(1234)
    elseif n_plot == 4
        rng(1467)
    elseif n_plot == 5
        rng(7777)
    end
    % Se calculan las iteraciones aleatorias
    iteraciones_aleatorias = randi([1 50], 1, 1);
    % Se calculan los lambdas aleatorios
    lambda_aleatorio = (randi([1,25], 1, 1)) / 100;
    % Se calculan los k aleatorios
    k_aleatorio = randi([1 100], 1, 1);
    % Se realiza el llamado a la función de Perona-Malik 1 con los valores aleatorios
    imagen4_salida = difusion_anisotropica(imagen4, iteraciones_aleatorias, lambda_aleatorio, k_aleatorio, 1);
    % Se establece el titulo a utilizar para cada imagen
    titulo = 'Iteraciones = ' + string(iteraciones_aleatorias) + ', Lambda = ' + string(lambda_aleatorio) + ', K = ' + string(k_aleatorio);
    % Si es la primera iteración, primero se muestra la imagen original con
    % ruido
    if n_plot == 1
        subplot(3,2,1), imshow(imagen4), title ('1. Original (ruido)')
    end
    % De lo contrario, se muestra la imagen resultante calculada mediante
    % el filtro de difusión anisotropica con Perona-Malik 1
    subplot(3,2,n_plot+1), imshow(imagen4_salida), title(string(n_plot+1) + '. ' + titulo);
end
% Se establece el titulo general del subgrafico.
sgtitle('Perona-Malik 1: Distintos valores para Iteraciones, Lambda y K');