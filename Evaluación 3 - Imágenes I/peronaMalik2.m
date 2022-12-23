function c = peronaMalik2(gradienteX,k)
% Función correspondiente a la segunda función de difusión de
% Perona-Malik. (Página 5 del artículo de Perona-Malik)

% ENTRADAS:
% gradienteX: Correspondiente al gradiente de una direccion.
% k: Corresponde al valor que permite suavizar los bordes

% SALIDA
% c: Corresponde al valor de un coeficiente en una determinada dirección.

c = 1./(1 + (gradienteX/k).^2);
end