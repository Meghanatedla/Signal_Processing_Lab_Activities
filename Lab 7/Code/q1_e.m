Fs = 5000;
n = 0:1/Fs:1;
f0 = 10;

xn = sin(2*pi*f0*n);

a = 1;
B = 1:8;

E = zeros(length(B), 1);

for m = 1:length(B)

    Y = quadratic_quant(xn, B(m), a);

    error = zeros(length(xn), 1);

    for k = 1:length(xn)
        error(k) = abs(xn(k) - Y(k));
    end

    subplot(8, 1, m)
    histogram(error, 15)
    title(['B =  ',num2str(B(m))])
    ylabel("freq of Error")
    xlabel("Error")
   
    E(m) = max(error);

end

sgtitle("Histogram of the Quantization Error")

figure()
stem(B, E)
title("Max Absolute Quantization Error")
ylabel("Error")
xlabel("B")