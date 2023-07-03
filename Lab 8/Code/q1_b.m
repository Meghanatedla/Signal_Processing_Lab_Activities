syms w;
N = 51;
nc = (N - 1)/2;

Hd = exp(-1i*w*nc);
w1 = pi/6;

hd = Inverse_DTFT(Hd, -w1, w1);

hn = hd(51:101);

H = fftshift(fft(hn, 1001));

figure()

subplot(3, 1, 1)
stem(hn)
title("Impulse Response")
ylabel("h[n]")
xlabel("n")

subplot(3, 1, 2)
plot(20*log(abs(H/max(H))))
title("DFT of h[n]", "Magnitude Spectrum")
ylabel("20log(|H((e^j^w)|)")
xlabel("w")
ylim([-100, 10]);

subplot(3, 1, 3)
plot(angle(H))
title(" ", "Phase Spectrum")
ylabel("Phase")
xlabel("k")

sgtitle("Low Pass FIR Filter design using Rectangular Window")
