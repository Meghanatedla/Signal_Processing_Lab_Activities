syms t;
T = pi;
w = -5:0.1:5;

xt = exp(1i*t);

X = continuousFT(t, xt, -T, T, w);

figure()

subplot(2, 2, 1)
plot(w, real(X))
title("Real Part of X(w)")
ylabel("Re[X(w)]")
xlabel("w")

subplot(2, 2, 2)
plot(w, imag(X))
title("Imaginary Part of X(w)")
ylabel("Im[X(w)]")
xlabel("w")

subplot(2, 2, 3)
plot(w, abs(X))
title("Magnitude of X(w)")
ylabel("|X(w)|")
xlabel("w")

subplot(2, 2, 4)
plot(w, angle(X))
title("Phase of X(w)")
ylabel("Phase")
xlabel("w")

sgtitle("x(t) = e^j^t in the interval [-π, π]")

%---------------------------------

xt = cos(t);

X = continuousFT(t, xt, -T, T, w);

figure()

subplot(2, 2, 1)
plot(w,real(X))
title("Real Part of X(w)")
ylabel("Re[X(w)]")
xlabel("w")

subplot(2, 2, 2)
plot(w, imag(X))
title("Imaginary Part of X(w)")
ylabel("Im[X(w)]")
xlabel("w")

subplot(2, 2, 3)
plot(w, abs(X))
title("Magnitude of X(w)")
ylabel("|X(w)|")
xlabel("w")

subplot(2, 2, 4)
plot(w, angle(X))
title("Phase of X(w)")
ylabel("Phase")
xlabel("w")

sgtitle("x(t) = cos(t) in the interval [-π, π]")