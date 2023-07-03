load('q1.mat')

figure()
stem(x)
ylabel('s1[n]')
xlabel('n')
title('signal')

N = 101;
MA_sys = MAsystem(x, N);

figure()
stem(MA_sys);
title('Moving Avg System');
xlabel('n')
ylabel('y[n]')
