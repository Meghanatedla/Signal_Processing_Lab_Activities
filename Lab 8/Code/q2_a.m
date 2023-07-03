w0 = pi/4;

%H = b0*(1-exp(1i*w0)*z^-1)*(1-exp(-1i*w0)*z^-1));
%H(1) = 1
b0 = 1/(4*(sin(w0/2))^2);

b1 = [1 -exp(1i*w0)];
b2 = [1 -exp(-1i*w0)];
b = b0*conv(b1, b2);

a = 1;

[h, w] = freqz(b, a, 2001);

figure()
plot(w/pi, 20*log10(abs(h)))
title("Frequency Response of Filter")
ylabel("Magnitude (dB)")
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylim = [-100 20];
