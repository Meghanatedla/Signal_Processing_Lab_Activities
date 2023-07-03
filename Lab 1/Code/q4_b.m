syms t;

f = t;

T = 1;
N = 10;
t1 = -1/4;
t2 = 1/4;
b = fourierCoeff(t, f, T, t1, t2, N);

k = -N:N;
figure()
subplot(1, 2, 1)
stem(k, b, 'b', linewidth=1.5);
xlabel('k');
ylabel('ak');
title('Real Part');

subplot(1, 2, 2)
stem(k,-1i*b, 'b', linewidth=1.5);
xlabel('k');
ylabel('ak');
title('Imaginary Part');

sgtitle("Fourier Coefficients of x2(t)")