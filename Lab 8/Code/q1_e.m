syms w;
N = 51;
nc = (N - 1)/2;

Hd = exp(-1i*w*nc);
w1 = pi/6;

hd = Inverse_DTFT(Hd, -w1, w1);

hn1 = hd(51:101);

W = transpose(blackman(51));

hn2 = hn1.*W;


n = 0:200;
xn = cos(pi*n/16)+0.25*sin(pi*n/16);

yn1 = conv(xn, hn1);
yn2 = conv(xn, hn2);

figure()
subplot(3,1,1)
stem(xn)
title("Original Signal")
ylabel("x[n]")
xlabel("n")

subplot(3,1,2)
stem(yn1)
title("LPF FIR Signal using Rectangular Window")
ylabel("y[n]")
xlabel("n")

subplot(3,1,3)
stem(yn1)
title("LPF FIR Signal using Blackman Window")
ylabel("y[n]")
xlabel("n")

sgtitle("x[n] = cos(2π/16) + 0.25sin(2π/16)")
%------------------------------------------------------
syms w;
N = 51;
nc = (N - 1)/2;

Hd = exp(-1i*w*nc);
w1 = pi/6;

hd = Inverse_DTFT(Hd, -w1, w1);

hn1 = hd(51:101);

W = transpose(blackman(51));

hn2 = hn1.*W;


n = 0:200;
xn = cos(pi*n/16)+0.25.*randn(1, 201);

yn1 = conv(xn, hn1);
yn2 = conv(xn, hn2);

figure()
subplot(3,1,1)
stem(xn)
title("Original Signal")
ylabel("x[n]")
xlabel("n")

subplot(3,1,2)
stem(yn1)
title("LPF FIR Signal using Rectangular Window")
ylabel("y[n]")
xlabel("n")

subplot(3,1,3)
stem(yn1)
title("LPF FIR Signal using Blackman Window")
ylabel("y[n]")
xlabel("n")

sgtitle("x[n] = cos(2π/16) + 0.25randn(1, 201)")