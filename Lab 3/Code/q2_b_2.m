load('q2_2.mat')

figure()
stem(x);
title('Original Signal')
ylabel('x[n]')
xlabel('n')

%------------------------------Zero Hold----------------------------------
M = 3;
y = zeros(M*length(x), 1);

for n = 1:M*length(x)

    if mod(n, M) == 0
        y(n) = x(n/M);
    else
        if n == 1
            y(n) = 0;
        else
            y(n) = y(n-1);
        end

    end
end

figure()
stem(y);
title('Upsampling with Zero Order Hold')
ylabel('x[n/M]')
xlabel('n')

%---------------------------Linear Interpolation-------------------------

z = 1:1:length(x);
xq = 1:1/M:length(x);
vq1 = interp1(z, x, xq);

figure()
stem(vq1);
title('Upsampling with Linear Interpolation')
ylabel('x[n/M]')
xlabel('n')
