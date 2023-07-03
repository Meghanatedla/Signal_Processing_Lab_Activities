
[x, fs] = audioread('Audio Files_2.wav');

N = length(x);

X = fftshift(fft(x, N));
X1 = fft(x, N);
F = fs*(-N/2:N/2-1)/N;

figure()
plot(abs(X1))
title('DFT of Audio Signal')
ylabel('|X(e^j^w)|')
xlabel('sample points')

figure()
plot(F, abs(X))
title('DFT of Audio Signal with FFTshift')
ylabel('|X(e^j^w)|')
xlabel('frequency(Hz)')

%-------------

[x, fs] = audioread('Audio.wav');

N = length(x);

X = fftshift(fft(x, N));
X1 = fft(x, N);

figure()
plot(abs(X1))
title('DFT of Audio Signal')
ylabel('|X(e^j^w)|')
xlabel('sample points')

F = fs*(-N/2:N/2-1)/N;

figure()
plot(F, abs(X))
title('DFT of Audio Signal with FFTshift')
ylabel('|X(e^j^w)|')
xlabel('frequency(Hz)')