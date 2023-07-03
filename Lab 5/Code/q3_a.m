
L = 4;

N = 4;
x = [ones(L, 1); zeros(N-L, 1)];

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
ylabel('Phase of X(e^j^w)')
xlabel('w')

sgtitle('4-Point DFT')

X1 = fftshift(fft(x, N));
F = length(x)*(-N/2:N/2-1)/N;

figure()
stem(F, abs(X1))
title('DFT of Audio Signal with FFTshift')
ylabel('|X(e^j^w)|')
xlabel('frequency(Hz)')

%--------------------------------

N = 16;
x = [ones(L, 1); zeros(N-L, 1)];

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

sgtitle('16-Point DFT')

X1 = fftshift(fft(x, N));
F = length(x)*(-N/2:N/2-1)/N;

figure()
stem(F, abs(X1))
title('DFT of Audio Signal with FFTshift')
ylabel('|X(e^j^w)|')
xlabel('frequency(Hz)')

%-----------------------------------

N = 64;
x = [ones(L, 1); zeros(N-L, 1)];

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

sgtitle('64-Point DFT')

X1 = fftshift(fft(x, N));
F = length(x)*(-N/2:N/2-1)/N;

figure()
stem(F, abs(X1))
title('DFT of Audio Signal with FFTshift')
ylabel('|X(e^j^w)|')
xlabel('frequency(Hz)')