# Demonstration-DFT-PS-PSD

This is a demonstration to show how to calculate Power Spectra (PS) and Power Spectral Densities (PSD) in real time. We calculate power spectra directly using DFT (or FFT). We calculate power spectral and power spectral densities using the MATLAB function periodogram.

One will see the following phenomena. (1) A power spectrum is equal to the square of the absolute value of DFT. (2) The sum of all power spectral lines in a power spectrum is equal to the power of the input signal. (3) The integral of a PSD is equal to the power of the input signal.

The PSD obtained by periodogram is an Equivalent Noise Power Spectral Density (ENPSD). One can see that ENPSD is related to PS by a factor of 1/T, which is equal to the frequency resolution or frequency interval. It should be noted that a power spectrum is a discrete sequence, or a discrete continuous-argument function, whereas an ENPSD is a non-discrete continuous argument function. To emphasize this, I used stem for power spectra and plot for ENPSD.

In this demonstration, we start with a sinusoidal signal with various parameters. We then proceed with an actual audio signal.

![alt text](https://github.com/liangsizhuang/Demonstration-DFT-PS-PSD/blob/master/figure.png)
