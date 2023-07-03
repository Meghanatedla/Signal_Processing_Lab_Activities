
p = 0.5;
a = [1,p];
N = 1001;

b = [1, p^-1];

figure()
zplane(b,a);

[h,w] = freqz(b,a,N, 'whole');

mag = abs(h);
figure()
plot(w,mag);
title("Magitude Response");
ylabel("Mag");
xlabel("normalized freq");

figure()
impz(b,a);