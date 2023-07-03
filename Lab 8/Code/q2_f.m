S = load('handel');

x = S.y;

f0 = 1024;
t = transpose(0:1/S.Fs:73112/S.Fs);

noise = sin(2*pi*f0.*t);

noisy_x = x + noise;

%---------------------------------------------------------

w0 = pi/4;

%H = b0*(1-exp(1i*w0)*z^-1)*(1-exp(-1i*w0)*z^-1));
%H(1) = 1
b0 = 1/(4*(sin(w0/2))^2);

b1 = [1 -exp(1i*w0)];
b2 = [1 -exp(-1i*w0)];
b = b0*conv(b1, b2);

a = 1;

modified_signal1 = filter(b, a, noisy_x);

%---------------------------------------------------------

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

modified_signal2 = filter(b, a, noisy_x);

figure()
subplot(2,2,1)
plot(x(1:101))
title("Handel Signal")
ylabel("Amplitude")
xlabel("n")

subplot(2,2,2)
plot(noisy_x(1:101))
title("Input Signal (Handel Signal with a sine)")
ylabel("Amplitude")
xlabel("n")

subplot(2,2,3)
plot(modified_signal1(1:101))
title("Output Signal of filter 1")
ylabel("Amplitude")
xlabel("n")

subplot(2,2,4)
plot(modified_signal2(1:101))
title("Output Signal of filter 2")
ylabel("Amplitude")
xlabel("n")



