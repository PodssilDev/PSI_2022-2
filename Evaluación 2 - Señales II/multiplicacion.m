function yfft = multiplicacion(xn,hn)
Xn = fft(xn); % Se obtiene la FFT de x[n]
Hn = fft(hn); % Se obtiene la FFT de h[n]
Yfft = Xn .* Hn; % Y(ejw) = X(ejw)H(ejw)

% Como lo anterior corresponde a la FFT de y[n], se debe aplicar la IFFT
% para poder obtener y[n]
yfft = ifft(Yfft); % Se aplica la IFFT a Y(ejw)
end