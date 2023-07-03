
w1 = -pi/12;
w2 = pi/12;
X = 1;

x = Inverse_DTFT(X,w1,w2);

n = -100:100;

figure()

subplot(2,1,1)
plot(n,real(x));
title('Real Part of x[n]')
ylabel('Re{x[n]}')
xlabel('n')

subplot(2,1,2)
plot(n,imag(x));
title('Imaginary Part of x[n]')
ylabel('Im{x[n]}')
xlabel('n')

sgtitle('Inverse DTFT')