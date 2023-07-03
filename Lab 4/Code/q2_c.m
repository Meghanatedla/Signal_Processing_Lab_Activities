n = 0:1000;
w0=pi/200;

sn = sin(w0.*n);

vn = randn(1, 1001);

xn = sn + vn;

figure()
subplot(2, 2, 1)
plot(n, xn, 'black')

hold on;

plot(n, sn, 'yellow', LineWidth=2)
hold off;

title('Sine Signal with and without Noise')
ylabel('Black - x[n]   Yellow - s[n]')
xlabel('n')

%-------------------------------
M = 5;
hn = 1/M*ones(1, M);

yn = conv(xn,hn, "full");

subplot(2, 2, 2)
plot(1:length(yn), yn, 'black')

hold on;

plot(1:length(sn), sn, 'yellow', LineWidth=2)
hold off;

title('Filtered and Original Signal (M = 5)')
ylabel('Black - y[n]   Yellow - s[n]')
xlabel('n')

%------------------------------

M = 21;
hn = 1/M*ones(1, M);

yn = conv(xn,hn, "full");

subplot(2, 2, 3)
plot(1:length(yn), yn, 'black')

hold on;

plot(1:length(sn), sn, 'yellow', LineWidth=2)
hold off;

title('Filtered and Original Signal (M = 21)')
ylabel('Black - y[n]   Yellow - s[n]')
xlabel('n')

%---------------------------------

M = 51;
hn = 1/M*ones(1, M);

yn = conv(xn,hn, "full");

subplot(2, 2, 4)
plot(1:length(yn), yn, 'black')

hold on;

plot(1:length(sn), sn, 'yellow', LineWidth=2)
hold off;

title('Filtered and Original Signal (M = 51)')
ylabel('Black - y[n]   Yellow - s[n]')
xlabel('n')



