function A = MAsystem(xt, N)

    M = zeros(length(xt), 1);
    A = zeros(length(xt), 1);

    M(1, 1) = xt(1, 1);

    for a = 2:1:length(xt)

        M(a, 1) = xt(a) + M(a-1, 1);

    end

    for a = 1:1:length(xt)

        if a <= N
            A(a, 1) = 1/5*M(a, 1);
        else
            A(a, 1) = 1/5*(M(a, 1) - M(a-N, 1));
        end
        
    end

end