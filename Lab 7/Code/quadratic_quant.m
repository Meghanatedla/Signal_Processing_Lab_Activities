function y = quadratic_quant(x, B, a)
    
    no_of_levels = 2^B;
    size = 2/no_of_levels;
    
    l = zeros(no_of_levels+1, 1);
    levels = zeros(no_of_levels+1, 1);
    
    for k = 1:1:length(l)
        if k == 1
            l(k) = -1;
        else
            l(k) = l(k-1) + size;
        end
        
        if l(k) < 0
            levels(k) = -a*(l(k)^2);
        else
            levels(k) = a*(l(k)^2);
        end
    end

    y = zeros(length(x), 1);
    y = x;

    for k = 1:1:length(x)

        if x(k) < levels(2)
            y(k) = (levels(1) + levels(2))/2;

        elseif x(k) > levels(length(levels) - 1)
            y(k) = (levels(length(levels)-1) + levels(length(levels)))/2;

        else
            for m = 2:1:length(levels)-2

                if x(k) > levels(m) && x(k) < levels(m+1)
                    y(k) = (levels(m) + levels(m+1))/2;
                end
            
            end
        end
    end
end
