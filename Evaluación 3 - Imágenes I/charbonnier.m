function c = charbonnier(gradienteX, k)
% Función correspondiente a la función de difusión de Charbonnier (Artículo
% de Pierre Charbonnier)

% ENTRADAS:
% gradienteX: Correspondiente al gradiente de una direccion.
% k: Corresponde al valor que permite suavizar los bordes

% SALIDA
% c: Corresponde al valor de un coeficiente en una determinada dirección.

c = 1./(sqrt(1 + (gradienteX/k).^2));
end
