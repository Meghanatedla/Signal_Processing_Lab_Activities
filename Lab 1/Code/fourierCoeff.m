%function
function F = fourierCoeff(t, xt, T, t1, t2, N)
   
    F = zeros(2*N + 1, 1, 'double');

    w0 = (2*pi)/T;

    for k = -N:1:N

        expr = xt*exp(-1i*k*w0*t);
        a = (int(expr, t, [t1, t2]))/(t2-t1);
        F(k+N+1,1) = 1/T*a;
        
    end
end