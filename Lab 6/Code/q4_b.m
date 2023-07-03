syms t;

w0 = 1;

T = 2*pi;
time = -2*T:0.01:2*T;

xt = cos(t);
A = fourierCoeff(t, xt, T, -T/2, T/2, 10);

%Low Pass Filter

wc = 2;
B = myLPF(A, w0, wc);

x = partialfouriersum(A, T, time, 10);
y = partialfouriersum(B, T, time, 10);

figure()
plot(time, x)
hold on;
plot(time, y)
title("x(t) = cos(t) with wc = 2 (Low Pass Filter)")
ylabel("Signal")
xlabel("time")
legend("x(t)", "y(t)")

%---------------------------------------------

wc = 0.5;
B = myLPF(A, w0, wc);

x = partialfouriersum(A, T, time, 10);
y = partialfouriersum(B, T, time, 10);

figure()
plot(time, x)
hold on;
plot(time, y)
title("x(t) = cos(t) with wc = 0.5 (Low Pass Filter)")
ylabel("Signal")
xlabel("time")
legend("x(t)", "y(t)")

%--------------------------------------------
%--------------------------------------------

%High Pass Filter

wc = 2;
B = myHPF(A, w0, wc);

x = partialfouriersum(A, T, time, 10);
y = partialfouriersum(B, T, time, 10);

figure()
plot(time, x)
hold on;
plot(time, y)
title("x(t) = cos(t) with wc = 2 (High Pass Filter)")
ylabel("Signal")
xlabel("time")
legend("x(t)", "y(t)")

%---------------------------------------------

wc = 0.5;
B = myHPF(A, w0, wc);

x = partialfouriersum(A, T, time, 10);
y = partialfouriersum(B, T, time, 10);

figure()
plot(time, x)
hold on;
plot(time, y)
title("x(t) = cos(t) with wc = 0.5 (High Pass Filter)")
ylabel("Signal")
xlabel("time")
legend("x(t)", "y(t)")

%----------------------------------------------
%----------------------------------------------

%Non-Ideal Filter

G = 1;
a = 1;
B = NonIdeal(A, w0, G, a);

x = partialfouriersum(A, T, time, 10);
y = partialfouriersum(B, T, time, 10);

figure()
plot(time, x)
hold on;
plot(time, y)
title("x(t) = cos(t) (Non-Ideal Filter)")
ylabel("Signal")
xlabel("time")
legend("x(t)", "y(t)")