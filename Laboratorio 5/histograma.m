function h=histograma(nombreImagen)
imagen=imread(nombreImagen);
h=zeros(1,256);
[nf nc]=size(imagen);
for i=1:nf
    for j=1:nc
        h(imagen(i,j)+1)=h(imagen(i,j)+1)+1;
    end
end
%subplot(1,2,1),imshow(imagen);
%subplot(1,2,2),
plot(h);