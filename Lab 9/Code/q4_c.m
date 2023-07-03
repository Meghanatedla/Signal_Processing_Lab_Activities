N = 5;
M = 5;

k = 1:N;

for i = 1:N
    A(i) = 1/(k(i)^2);
end

P = zeros(N);
fs = 10000;
F_notes = 50 + 50*randi(1, M);
td_notes = 0.5 + randi(1, M);

asdr = [0.2,0.2,0.7,0.4,0.2];

yn = my_synthesizer(A,F_notes,P,asdr,td_notes,fs);

x = 1:1/fs:(length(yn)/fs)+1-1/fs;

figure()
plot(x,yn)
title("Synthesized Signal")
ylabel("y[n]")
xlabel("time")

soundsc(yn);