n = 0:1000;
w0=pi/200;

sn = sin(w0.*n);

vn = randn(1, 1001);

xn = sn + vn;

figure()
subplot(2, 1, 1)
plot(n, xn, 'black')

hold on;

plot(n, sn, 'yellow', LineWidth=2)
hold off;

title('Sine Signal with and without Noise')
ylabel('Black - x[n]   Yellow - s[n]')
xlabel('n')

%--------------------------------------

hn = [1, -1];
yn = conv(xn, hn, "full");

subplot(2, 1, 2)
plot(1:length(yn), yn, 'black')

hold on;

plot(1:length(sn), sn, 'yellow', LineWidth=2)
hold off;

title('Filtered and Original Signal')
ylabel('Black - y[n]   Yellow - s[n]')
xlabel('n')

%----------------------------------------
%----------------------------------------
X = DT_Fourier(xn, 1, w);

figure()
subplot(2, 1, 1)
plot(w, abs(X))
title('DTFT of Noisy Signal')
ylabel('Magnitude of X(e^(^j^w^))')
xlabel('w')

Y = DT_Fourier(yn, 1, w);

subplot(2,1,2)
plot(w,abs(Y))
title('DTFT of Filtered Signal')
ylabel('Magnitude of Y(e^(^j^w^))')
xlabel('w')
