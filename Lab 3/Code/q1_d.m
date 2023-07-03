load('q1.mat')

N = 5;
MA_sys = MAsystem(x, N);

stem(MA_sys);
title('Moving Avg System');
xlabel('n')
ylabel('y[n]')