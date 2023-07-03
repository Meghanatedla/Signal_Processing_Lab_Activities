function B = NonIdeal(A, w0_FS, G, a)
    
    n =  length(A);
    
    for k = -(n-1)/2:(n-1)/2        
        B(k + ((n-1)/2) + 1) = A(k + ((n-1)/2) + 1)*(G/(a+abs(k*w0_FS)));        
    end
end