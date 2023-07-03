syms t;
time_grid = -0.5:0.01:0.5;

T = 1;
N = 5;

f = 2*cos(2*pi*t) + cos(6*pi*t);

a = fourierCoeff(t, f, T, -T/2, T/2, N);
A = partialfouriersum(a, T, time_grid, N);


F = 2*cos(2*pi*time_grid) + cos(6*pi*time_grid);

figure()
plot(time_grid, F, 'red');

hold on;

plot(time_grid, A, 'b');
xlabel('time');
ylabel('x(t)');
title('Original and Reconstructed Signal');
