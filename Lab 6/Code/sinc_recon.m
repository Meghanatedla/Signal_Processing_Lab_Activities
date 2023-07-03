function xr = sinc_recon(n, xn, Ts, t_fine)
    
    ws = (2*pi)/Ts;
    wc = ws/2;
    xr = zeros(1,length(t_fine));
    
    for k = 1:1:n(length(n))+1 - n(1) 
        xr = xr + xn(k)*sinc((t_fine/Ts) - (k-1 + n(1))); 
    end
end