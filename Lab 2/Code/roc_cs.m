function [N, ROC, C, S] = roc_cs(p)
    
for a = 1:length(p)
    p(a) = abs(p(a));
end

p = sort(p);
p = unique(p);

%Number of unique ROC possible for p
if p(1) == 0
    N = length(p);
else 
    N = length(p) + 1;
end

%ROC
ROC = zeros(N, 2);

if p(1) ~= 0

        for b = 1:length(p)+1
            if b == 1
                ROC(b, 1) = 0;
                ROC(b, 2) = p(b);
            else

                ROC(b, 1) = p(b-1);

                if b == length(p)+1
                    ROC(b, 2) = inf;
                else
                    ROC(b, 2) = p(b);
                end 
            end

        end
else

     for c = 1:length(p)
         ROC(c, 1) = p(c);

         if c == length(p)
                ROC(c, 2) = inf;
         else
                ROC(c, 2) = p(c+1);
         end 
     end
end

%Stability of system
S = zeros(N, 1);

for x = 1:N

    if ROC(x, 1) < 1 && ROC(x, 2) > 1
        S(x, 1) = 1;
    else
        S(x, 1) = 0;
    end

end

%Causality of system
C = zeros(N, 1);

C(N, 1) = 1;

disp("N = "+N);

disp("ROC = ");
disp(ROC);

disp("C = ");
disp(C);

disp("S = ");
disp(S);
   
end