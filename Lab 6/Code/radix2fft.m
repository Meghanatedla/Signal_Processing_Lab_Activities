function X = radix2fft(x)

    if length(x) == 1 % length(x) must be of the form of 2^m
        X = x;
    else
        xe = x(1:2:length(x));
        Xe = radix2fft(xe);

        xo = x(2:2:length(x));
        Xo = radix2fft(xo);

        W = exp(-1i*2*pi/length(x));
        k = (0:(length(x)/2-1))';

        Xo = (W.^k).*Xo;

        X = [Xe+Xo; Xe-Xo];
    end
end