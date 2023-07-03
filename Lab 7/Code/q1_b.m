Fs = 5000;
n = 0:1/Fs:1;
f0 = 10;

xn = sin(2*pi*f0*n);

a = 1;
B = 4;
Y = quadratic_quant(xn, B, a);

figure()
subplot(3, 1, 1)
stem(n, xn)
title("Sampled Signal")
ylabel("x[n]")
xlabel("n")

subplot(3, 1, 2)
stem(n, Y)
title("Quantised Signal")
ylabel("x_q[n]")
xlabel("n")

error = zeros(length(xn), 1);

for k = 1:1:length(xn)
    error(k) = abs(xn(k) - Y(k));
end

subplot(3, 1, 3)
stem(n, error)
title("Quantization Error")
ylabel("Error")
xlabel("n")

%*******************************************

figure()
subplot(2, 1, 1)
histogram(error, 15)
title("B = 4")
ylabel("freq of Error")
xlabel("Error")

B = 3;
Y = quadratic_quant(xn, B, a);

error = zeros(length(xn), 1);

for k = 1:1:length(xn)
    error(k) = abs(xn(k) - Y(k));
end


subplot(2, 1, 2)
histogram(error, 15)
title("B = 3")
ylabel("freq of Error")
xlabel("Error")

sgtitle("Histogram of the Quantization Error")
