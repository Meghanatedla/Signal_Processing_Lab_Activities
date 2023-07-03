
a = [1,-0.5,0.2,-0.1,0.007,0.14,0.15];
N = 1001;

[h,w] = freqz(1,a,N, 'whole');

mag = abs(h);
figure()
plot(w,mag);
title("Magnitude Response");
ylabel("Magnitude");
xlabel("Normalized frequency");