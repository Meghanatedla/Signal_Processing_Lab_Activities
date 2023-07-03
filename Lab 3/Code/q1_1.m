d = zeros(101, 1);
d(1, 1) = 1;

N = 101;

%impulse response of the sytem
h = MAsystem(d, N);

load('q1.mat')

y = conv(x, h);
stem(y)

hold on;

MA_sys = MAsystem(x, N);
stem(MA_sys, 'red');

title('Moving Avg System')
ylabel('y[n]')
xlabel('n')