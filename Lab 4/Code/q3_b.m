w = [pi/8, pi/4, pi/2, pi];

for k = 1:length(w)
w2 = w(k);
w1 = -1*w(k);
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
end

