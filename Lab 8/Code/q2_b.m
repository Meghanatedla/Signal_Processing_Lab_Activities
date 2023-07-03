w0 = pi/4;
r0 = 0.9;

%H = b0*{(1-exp(1i*w0)*z^-1)*(1-exp(-1i*w0)*z^-1))}
%    -------------------------------------------------
%       {(1-exp(1i*w0)*z^-1)*(1-exp(-1i*w0)*z^-1))}

%H(1) = 1

b0 = ((1-exp(1i*w0)*r0)*(1-exp(-1i*w0)*r0))/((1-exp(1i*w0))*(1-exp(-1i*w0)));

b1 = [1 -exp(1i*w0)];
b2 = [1 -exp(-1i*w0)];
b = b0*conv(b1, b2);

a1 = [1 -r0*exp(1i*w0)];
a2 = [1 -r0*exp(-1i*w0)];
a = conv(a1, a2);

[h, w] = freqz(b, a, 2001);

figure()
plot(w/pi, 20*log10(abs(h)))
title("Frequency Response of Filter")
ylabel("Magnitude (dB)")
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylim = [-100 20];