function [fft_x, f] = myGetDFT(x, Fs)

N = length(x);
fft_x = fft(x)/N;
fft_x = fftshift(fft_x);
T = N/Fs;
if(mod(N,2) == 0)
    f = -N/2:N/2-1; % Even
else
    f = (-N+1)/2:(N-1)/2; % Odd
f = transpose(f/T);

end