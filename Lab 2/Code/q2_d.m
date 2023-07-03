
p = -0.8;
a = [1,p];
N = 1001;

figure()
zplane(1,a);

[h,w] = freqz(1,a,N, 'whole');

mag = abs(h);
figure()
plot(w,mag);
title("Magitude Response");
ylabel("Mag");
xlabel("normalized freq");

figure()
impz(1,a);

%-----------------------------------------------------------------------

x = 0.1;
a = [1,x];
N = 1001;

figure()
zplane(1,a);

[h,w] = freqz(1,a,N, 'whole');

mag = abs(h);
figure()
plot(w,mag);
title("Magitude Response");
ylabel("Mag");
xlabel("normalized freq");

figure()
impz(1,a);