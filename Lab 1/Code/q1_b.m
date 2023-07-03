syms t;

g = 1;

T = 1;
n = 10;

c = fourierCoeff(t, g, T, -T/4, T/4, n);

k1 = -n:1:n;

figure()
stem(k1, c, 'red', linewidth=1.5);
xlabel('k');
ylabel('ak');
title('Fourier Coefficients of x(t)');