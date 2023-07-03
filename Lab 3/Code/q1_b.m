ut = ones(100, 1);
N = 5;

MA_sys = MAsystem(ut, N);
%disp(MA_sys);

stem(MA_sys);
title('Moving Avg System');
xlabel('n')
ylabel('y[n]')
