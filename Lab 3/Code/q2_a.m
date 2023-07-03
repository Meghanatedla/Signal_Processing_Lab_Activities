v = 1:1:25;
M = 3;

%-----------------------------zero hold----------------------------------
y = zeros(M*25, 1);

for n = 1:1:M*25

    if mod(n, M) == 0
        y(n) = n/M;
    else
        if  n == 1
            y(n) = 0;
        else
            y(n) = y(n-1);
        end
    end
end

figure()
stem(y);
title('Upsampling with Zero Order Hold')
ylabel('y[n/M]')
xlabel('n')

%--------------------------Linear Interpolation---------------------------
x = 1:1:25;
xq = 1:1/M:25;

vq1 = interp1(x, v, xq);

figure()
stem(vq1);
title('Upsampling with Linear Interpolation')
ylabel('x[n/M]')
xlabel('n')




