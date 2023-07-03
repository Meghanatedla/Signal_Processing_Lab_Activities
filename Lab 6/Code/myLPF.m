function B = myLPF(A, w0_FS, wc)
    
    n =  length(A);
    
    for k = -(n-1)/2:(n-1)/2
        if abs(k*w0_FS) <= wc
            B(k + ((n-1)/2) + 1) = A(k + ((n-1)/2) + 1);
        else
            B(k + ((n-1)/2) + 1) = 0;
        end
    end
end