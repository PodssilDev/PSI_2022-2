close all
I = double(rgb2gray(imread('coffeecup.jpg')));

numSemillas=5;
regiones=zeros(size(I));

figure(1), imshow(uint8(I))
hold on
title('original');
for regionActual=1:numSemillas
    disp(['region ' num2str(regionActual) ' ...']);
    p = vl_click;plot(p(1),p(2),'r*');        
    semillas(regionActual,1)=round(p(1));
    semillas(regionActual,2)=round(p(2));
end
hold off;
for regionActual=1:numSemillas
    i0=semillas(regionActual,2);
    j0=semillas(regionActual,1);
    th=40; %según imagen
    R = zeros(size(I));
    g = I(i0,j0);
    R(i0,j0) = 1;
    n = 1;
    X = ones(3,3);
    figure
    while (n>0)
        T = imdilate(R,X);
        G = and(T,not(R));
        ii = find(G==1);
        n = length(ii);
        m = 0;
        if (n>0)
            for i=1:n
                if abs(I(ii(i))-g)<th
                    regiones(ii(i))=regionActual;
                    R(ii(i))=1;
                    m = m+1;
                end
            end
        end
        n = m;
        J = I;
        jj = find(R==0);
        J(jj)=255;
        imshow(uint8(J))
        drawnow
    end
    title(['Region ' num2str(regionActual)])
end

Lrgb = label2rgb(regiones,'jet','w','shuffle');

figure, imshow(Lrgb), title('Matriz de etiquetas')

figure, imshow(uint8(I)), hold on,
himage = imshow(Lrgb);
himage.AlphaData = 0.3;
title('Etiquetas con transparencia sobrepuestas en imagen original')