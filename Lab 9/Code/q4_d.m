N = 42;

k = 1:N;
for i = 1:N
    A(i) = 1/(k(i)^2);
end

P = zeros(N, 1);
fs = 10000;

F_notes = [262, 262, 392, 392, 440, 440, 392,349, 349, 330, 330, 294, 294, 262,392, 392, 349, 349, 330, 330, 294,392, 392, 349, 349, 330, 330, 294,262, 262, 392, 392, 440, 440, 392, 349, 349, 330, 330, 294, 294, 262];
td_notes = ones(N,1)*0.4;

td_notes(7:7:42) = 0.6;
asdr = [0.2,0.2,0.7,0.4,0.2];

yn = my_synthesizer(A,F_notes,P,asdr,td_notes,fs);

figure()
plot(yn)
title("Synthesized Signal")
ylabel("y[n]")
xlabel("time")

soundsc(yn);

audiowrite("Tune.wav", yn, fs);