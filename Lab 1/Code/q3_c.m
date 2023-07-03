syms t;

time_grid = -0.5:0.01:0.5;
x = 1;

t1 = -0.1;
t2 = 0.1;

T = 1;
%N = 10, 50, 100, 1000
N = 10;

a = fourierCoeff(t, x, T, t1, t2, N);

%reconstruction of signal
A = partialfouriersum(a, T, time_grid, N);

figure()
plot(time_grid, A, 'b');
xlabel('time');
ylabel('x(t)');
title('Reconstructed Signal');