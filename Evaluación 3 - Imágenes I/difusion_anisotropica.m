function imagen_salida = difusion_anisotropica(imagen_entrada,iteraciones, lambda, k, numero_funcion)
% Función que calcula la difusión anisotrópica basada en el artículo
% propuesto por Perona y Malik en 1990, utilizando una función de difusión.

% ENTRADAS:
% * imagen_entrada: Corresponde a la imagen a utilizar, en escala de grises
% * iteraciones: Número de iteraciones para aplicar al algoritmo. Mientras
% mas iteraciones, más borrosa se vuelve la imagen
% * lambda: Valor recomendado 0.25, velocidad de difusión
% * k: Preferencia en los ejes
% * numero_funcion: Debe tomar 3 valores posibles:
% 1: Para la primera función de difusión de Perona-Malik
% 2: Para la segunda función de difusión de Perona-Malik
% 3: Para la función de difusion de Charbonnier

% SALIDA:
% imagen_salida: Corresponde a la imagen resultante tras aplicar la
% difusión anisotropica. Dependiendo de las entradas, se pueden obtener
% distintos resultados.

% Se cambia la imagen de entrada de uint8 a double
imagen_entrada = double(imagen_entrada);
% Se obtiene el total de filas y columnas de la imagen de entrada
[filas, columnas] = size(imagen_entrada);
% Se copia la imagen de salida a la imagen de entrada
imagen_salida = imagen_entrada;

% Realizando las iteraciones
for i = 1:iteraciones
    % Se crea una nueva matriz, cuyas filas y columnas son del mismo largo
    % que la imagen de entrada, pero ambos aumentado en 2
    imagen_salida_1 = zeros(filas+2, columnas+2);
    
    % Se copian los valores de la imagen de entrada a la nueva matriz. Esto
    % hará que esta nueva matriz quede "rodeada" de 0s.
    imagen_salida_1(2:filas+1, 2:columnas+1) = imagen_salida;

    % Se calculan los gradientes Norte, Sur, Este y Oeste del punto actual.
    % Para ello, se realiza la resta entre la nueva matriz y la imagen de
    % salida, replicando la ecuación 8 del artículo de Perona-Malik.
    gradienteN = imagen_salida_1(1:filas,2:columnas+1)   - imagen_salida;
    gradienteS = imagen_salida_1(3:filas+2,2:columnas+1) - imagen_salida;
    gradienteE = imagen_salida_1(2:filas+1,3:columnas+2) - imagen_salida;
    gradienteW = imagen_salida_1(2:filas+1,1:columnas)   - imagen_salida;

    % Llamado a las funciones de difusión. Se calculan los coeficientes
    % utilizando la ecuación 9 del artículo de Perona-Malik. Hay tres
    % funciones de difusión (g) posibles en este script.
    if numero_funcion == 1
        % Si numero_funcion es 1, se llama a la primera función de difusión
        % de Perona-Malik y se realiza el calculo de cN, cS, cE y cW. La
        % función recibe el gradiente correspondiente y el valor de k.
        cN = peronaMalik1(gradienteN, k);
        cS = peronaMalik1(gradienteS, k);
        cE = peronaMalik1(gradienteE, k);
        cW = peronaMalik1(gradienteW, k);

    elseif numero_funcion == 2
        % Si numero_funcion es 2, se llama a la segunda función de difusión
        % de Perona-Malik y se realiza el calculo de cN, cS, cE y cW. La
        % función recibe el gradiente correspondiente y el valor de k.
        cN = peronaMalik2(gradienteN, k);
        cS = peronaMalik2(gradienteS, k);
        cE = peronaMalik2(gradienteE, k);
        cW = peronaMalik2(gradienteW, k);

    elseif numero_funcion == 3
        % Si numero_funcion es 3, se llama a la función de difusión de
        % Charbonnier y se realiza el calculo de cN, cS, cE y cW. La
        % función recibe el gradiente correspondiente y el valor de k.
        cN = charbonnier(gradienteN, k);
        cS = charbonnier(gradienteS, k);
        cE = charbonnier(gradienteE, k);
        cW = charbonnier(gradienteW, k);
    end

    % Se realiza el calculo final de la imagen de salida, utilizando la
    % ecuación 7 del artículo de Perona-Malik
    imagen_salida = imagen_salida + lambda*(cN.*gradienteN + cS.*gradienteS + cE.*gradienteE + cW.*gradienteW);
end
% Se transforma la imagen de salida de double a uint8. Esto permite
% visualizar correctamente la imagen de salida con imshow().
imagen_salida = uint8(imagen_salida);
end