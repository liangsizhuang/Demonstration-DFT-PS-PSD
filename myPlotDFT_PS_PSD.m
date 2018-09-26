function myPlotDFT_PS_PSD(x, Fs)

N = length(x);
t = (0:N-1)/Fs;
T = N/Fs;

% My DFT
[X, f] = myGetDFT(x, Fs);
% Periodogram Power Spectrum
[px, fpx] = periodogram(x, [], N, Fs, 'centered', 'power');
% Periodogram ENPSD
[psdx, fpsdx] = periodogram(x, [], N, Fs, 'centered', 'psd');

figure(1);
subplot(2,2,1);plot(t,x,'.-');xlabel('Time (s)');
title(['N = ' num2str(N) '    Fs = ' num2str(Fs) ' Hz']);
text(0.98, 0.95, ['T = ' num2str(T) ' s'], 'Units', 'normalized', 'HorizontalAlignment', 'right');
text(0.98, 0.875, ['Power = ' num2str(mean(abs(x).^2))], 'Units', 'normalized', 'HorizontalAlignment', 'right');

subplot(2,2,2);stem(f,abs(X).^2,'.-');xlabel('Frequency (Hz)');
title('|DFT|^2');
text(0.98, 0.95, ['Max Strength = ' num2str(max(abs(X).^2))], 'Units', 'normalized', 'HorizontalAlignment', 'right');
text(0.98, 0.875, ['Sum = ' num2str(sum(abs(X).^2))], 'Units', 'normalized', 'HorizontalAlignment', 'right');

subplot(2,2,3);stem(fpx, px,'.-');xlabel('Frequency (Hz)');
title('Power Spectrum');
text(0.98, 0.95, ['Max Strength = ' num2str(max(px))], 'Units', 'normalized', 'HorizontalAlignment', 'right');
text(0.98, 0.875, ['Sum = ' num2str(sum(px))], 'Units', 'normalized', 'HorizontalAlignment', 'right');

subplot(2,2,4);stairs(fpsdx-0.5*(1/T), psdx);xlabel('Frequency (Hz)');
title('ENPSD');
text(0.98, 0.95, ['Max Value = ' num2str(max(psdx))], 'Units', 'normalized', 'HorizontalAlignment', 'right');
text(0.98, 0.875, ['Max Value * \Delta f = ' num2str(max(psdx)/T)], 'Units', 'normalized', 'HorizontalAlignment', 'right');
text(0.98, 0.80, ['\Delta f = 1 / T = ' num2str(1/T)], 'Units', 'normalized', 'HorizontalAlignment', 'right');

end