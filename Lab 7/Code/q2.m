[y, Fs] = audioread("Sound.wav");

a = 1;
B = 3;

Y = quadratic_quant(y, B, a);

sound(y)
pause(40);

sound(Y)
pause(40);

B = 1:8;
for k = 1:length(B)
    Y = quadratic_quant(y, B(k), a);
    sound(Y)
    pause(37);
end
