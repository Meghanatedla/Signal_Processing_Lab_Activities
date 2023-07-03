%n = 0:1:3; 
%x = sin(n);
x = [1, 2, 3, 4];

X = radix2fft(x);

figure()

subplot(2, 2, 1)
stem(real(X))
title("Output of radix2fft function")
ylabel("Re[X(k)]")
xlabel("w")

subplot(2, 2, 2)
stem(imag(X))
title("Output of radix2fft function")
ylabel("Im[X(k)]")
xlabel("w")

Y = fft(x);
subplot(2,2,3)
stem(real(Y))
title("Output of fft function")
ylabel("Re[X(k)]")
xlabel("w")

subplot(2,2,4)
stem(imag(Y))
title("Output of fft function")
ylabel("Im[X(k)]")
xlabel("w")


sgtitle("x[n] = [1, 2, 3, 4] (length = 4)")
