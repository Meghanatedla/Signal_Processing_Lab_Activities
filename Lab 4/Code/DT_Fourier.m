function X = DT_Fourier(x, N0, w)

    lenx = length(x);
    lenw = length(w);

    X = zeros(1, lenw);

    for k=1:1:lenx
        X = X + (x(k)*exp(-1i*w*(k-N0)));
    end

end