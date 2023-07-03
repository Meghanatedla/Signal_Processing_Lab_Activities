syms t;

xt = 1;
T = 1;
w = -5:0.1:5;

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

sgtitle("x(t) = u(t+1)-u(t-1)")

%------------------------------------

T = 4;

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

sgtitle("x(t) = u(t+4)-u(t-4)")