N = 20;
n = 0:1:N-1;
w0 = (3*pi)/10;

x = cos(w0*n);
X = fft(x, N);

figure()

subplot(3, 1, 1);
stem(X);
title('Sequence')
ylabel('X(e^j^w)')
xlabel('w')

subplot(3, 1, 2)
stem(abs(X))
title('Magnitude Spectrum')
ylabel('|X(e^j^w)|')
xlabel('w')

subplot(3, 1, 3)
stem(angle(X))
title('Phase Spectrum')
ylabel('/__X(e^j^w)')
xlabel('w')

sgtitle('20-Point DFT of x[n] = cos(w0n)')

X1 = fftshift(fft(x, N));
F = length(x)*(-N/2:N/2-1)/N;

figure()
stem(F, abs(X1))
title('DFT of Audio Signal with FFTshift')
ylabel('|X(e^j^w)|')
xlabel('frequency(Hz)')