w = -10:0.01:10;
n = 0:1000;
w0=pi/200;

sn = sin(w0.*n);

vn = randn(1, 1001);

xn = sn + vn;

X = DT_Fourier(xn, 1, w);

figure()
subplot(2, 2, 1)
plot(w, abs(X))
title('DTFT of Noisy Signal')
ylabel('Magnitude of X(e^(^j^w^))')
xlabel('w')


%------------------------

M = 5;
hn = 1/M*ones(1, M);

yn = conv(xn,hn, "full");
Y = DT_Fourier(yn, 1, w);

subplot(2,2,2)
plot(w,abs(Y))
title('DTFT of Filtered Signal (M = 5)')
ylabel('Magnitude of Y(e^(^j^w^))')
xlabel('w')

%------------------------

M = 21;
hn = 1/M*ones(1, M);

yn = conv(xn,hn, "full");
Y = DT_Fourier(yn, 1, w);

subplot(2,2,3)
plot(w,abs(Y))
title('DTFT of Filtered Signal (M = 21)')
ylabel('Magnitude of Y(e^(^j^w^))')
xlabel('w')

%------------------------

M = 51;
hn = 1/M*ones(1, M);

yn = conv(xn,hn, "full");
Y = DT_Fourier(yn, 1, w);

subplot(2,2,4)
plot(w,abs(Y))
title('DTFT of Filtered Signal (M = 51)')
ylabel('Magnitude of Y(e^(^j^w^))')
xlabel('w')