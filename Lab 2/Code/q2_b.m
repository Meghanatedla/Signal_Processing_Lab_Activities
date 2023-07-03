
p = 0.8;
a = [1,p];

N = 1001;
[h,w] = freqz(1,a,N, 'whole');

mag = abs(h);
figure()
plot(w,mag);
title("Magitude Response");
ylabel("Mag");
xlabel("normalized freq");

