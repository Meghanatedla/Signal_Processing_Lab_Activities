
function x = Inverse_DTFT(X, w1, w2)

    syms w
    x = zeros(1, 201);
    for k = -100:100

        expr = X*exp(1i*w*k); 
        x(1,k+101) = 1/2*1/pi*int(expr, w, w1, w2);
        
    end
end