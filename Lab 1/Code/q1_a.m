syms t;

f = 2*cos(2*pi*t) + cos(6*pi*t);

T = 1;
N = 5;

a = fourierCoeff(t, f, T, -T/2, T/2, N);

k = -N:1:N;

figure()
stem(k, a, 'b', linewidth=1.5);
xlabel('k');
ylabel('ak');
title('Fourier Coefficients of x(t)');