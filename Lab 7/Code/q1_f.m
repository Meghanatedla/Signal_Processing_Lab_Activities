Fs = 5000;
n = 0:1/Fs:1;
f0 = 10;

xn = sin(2*pi*f0*n);

xn_2 = 0;

for k = 1:length(xn)
    xn_2 = xn_2 + xn(k)^2;
end

a = 1;
B = 1:8;

SQNR = zeros(length(B), 1);

for m = 1:length(B)

    Y = quadratic_quant(xn, B(m), a);

    error = zeros(length(xn), 1);

    for k = 1:length(xn)
        error(k) = abs(xn(k) - Y(k));
    end

    error_2 = 0;
    for k = 1:length(xn)
        error_2 = error_2 + error(k)^2;
    end

    SQNR(m) = xn_2/error_2;
end

figure()
stem(B, SQNR)
title("Signal to Quantization Noise Ratio")
ylabel("SQNR")
xlabel("B")