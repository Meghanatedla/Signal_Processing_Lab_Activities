f0 = 12;
fs = 64;

L = 16;
n = 0:1:L-1;
y = hann(L);
w = transpose(y);
p = cos((2*pi*f0*n)/fs);

x = p.*w;

m = 1;
N = m*L;

X = fft(x, N);

figure()
subplot(2, 2, 1)
stem(abs(X))
title('16-Point DFT')
ylabel('|X(e^j^w)|')
xlabel('w')

%------------

m = 2;
N = m*L;

X = fft(x, N);

subplot(2, 2, 2)
stem(abs(X))
title('32-Point DFT')
ylabel('|X(e^j^w)|')
xlabel('w')

%------------

m = 4;
N = m*L;

X = fft(x, N);

subplot(2, 2, 3)
plot(abs(X))
title('64-Point DFT')
ylabel('|X(e^j^w)|')
xlabel('w')

%-------------

m = 8;
N = m*L;

X = fft(x, N);

subplot(2, 2, 4)
plot(abs(X))
title('128-Point DFT')
ylabel('|X(e^j^w)|')
xlabel('w')

sgtitle('DFT of x[n] = cos((2pif0n)/fs)')