syms t;

time_grid = -0.5:0.01:0.5;

T = 1;
N = 5;

f = 2*cos(2*pi*t) + cos(6*pi*t);

a = fourierCoeff(t, f, T, -T/2, T/2, N);
A = partialfouriersum(a, T, time_grid, N);


F = 2*cos(2*pi*time_grid) + cos(6*pi*time_grid);

MAE = max(abs(A - F));
disp("Maximum Absolute Error = ");
disp(MAE);

RMSE = sqrt(mean((A - F).^2));
disp("Root Mean Square Error = ")
disp(RMSE)
