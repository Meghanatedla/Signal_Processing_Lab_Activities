
x1 = rand(10, 1);
x2 = zeros(10, 1);
x2(4, 1) = 1;

linear_conv = conv(x1, x2);
circular_conv = cconv(x1, x2, 30);

figure()
subplot(2, 2, 1)
stem(linear_conv)
title('Linear Convolution')
ylabel('y[n]')
xlabel('n')

subplot(2, 2, 2)
stem(circular_conv)
title('Circular Convolution')
ylabel('y[n]')
xlabel('n')

%--------- DFT Method-------

% linear Convolution
N = 20;
X1 = fft(x1, N);
X2 = fft(x2, N);

Y = X1.*X2;

y = ifft(Y);

subplot(2, 2, 3)
stem(y)
title('Linear Convolution using DFT')
ylabel('y[n]')
xlabel('n')


% Circular Convolution
N = 30;
X1 = fft(x1, N);
X2 = fft(x2, N);

Y = X1.*X2;

y = ifft(Y);

subplot(2, 2, 4)
stem(y)
title('Circular Convolution using DFT')
ylabel('y[n]')
xlabel('n')

sgtitle('Direct and DFT Based Convolution')
