syms t;

time_grid = -0.5:0.01:0.5;
x = 1;

t1 = -0.1;
t2 = 0.1;

%T = 1, 10, 20,...
T = 1;
N = 10*T;

%fourier Coefficients
a = fourierCoeff(t, x, T, t1, t2, N);

k = -N:N;

figure()
stem(k, a, 'red');
xlabel('k');
ylabel('ak');
title('Fourier Coefficient of x(t)');