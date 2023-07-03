f0 = 12;
fs = 64;

L = 16;
n = 0:1:L-1;
x = cos((2*pi*f0*n)/fs);

N = 8*L;

X = fft(x, N);

figure()
subplot(2, 2, 1)
stem(abs(X))
title('128-Point DFT')
ylabel('|X(e^j^w)|')
xlabel('w')

%------------

L = 32;
n = 0:1:L-1;
x = cos((2*pi*f0*n)/fs);

N = 8*L;

X = fft(x, N);

subplot(2, 2, 2)
stem(abs(X))
title('256-Point DFT')
ylabel('|X(e^j^w)|')
xlabel('w')

%------------

L = 64;
n = 0:1:L-1;
x = cos((2*pi*f0*n)/fs);

N = 8*L;

X = fft(x, N);

subplot(2, 2, 3)
plot(abs(X))
title('512-Point DFT')
ylabel('|X(e^j^w)|')
xlabel('w')

%-------------

L = 128;
n = 0:1:L-1;
x = cos((2*pi*f0*n)/fs);

N = 8*L;

X = fft(x, N);

subplot(2, 2, 4)
plot(abs(X))
title('1024-Point DFT')
ylabel('|X(e^j^w)|')
xlabel('w')

sgtitle('DFT of x[n] = cos((2pif0n)/fs)')