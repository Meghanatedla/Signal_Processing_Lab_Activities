syms w

w1 = pi/4;
w2 = pi/2;

x = zeros(1, 201);
X = 1;

for k = -100:100

    expr = X*exp(1i*w*k); 
    x(1,k+101) = 1/(2*pi)*int(expr,w,-w2,-w1) + 1/(2*pi)*int(expr,w,w1,w2);

end

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