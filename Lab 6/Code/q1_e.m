syms t;
T = 1/2;
w = -5:0.1:5;

gt = 1;

% g(t) = u(t+1/2) - u(t-1/2)
% x(t) = g(t)*g(t) [convolution]
% X(w) = G(w)G(w) [Multiplication]

G = continuousFT(t, gt, -T, T, w);

X = G.^2;

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

sgtitle("x(t) is a triangular pulse")