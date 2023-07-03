
w0 = 10000;
n = 1:1:10000;

C = cos(w0*n);

wm = 100;
x = sin(wm*n);

y = C.*x;

stem(y)
title('Amplitude Modulation')
ylabel('y[n]')
xlabel('n')