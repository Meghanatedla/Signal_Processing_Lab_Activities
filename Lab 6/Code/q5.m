t_fine = 0:0.001:2;
xt = cos(5*pi*t_fine) + sin(10*pi*t_fine);

Ts = 0.1;
t_samples = 0:Ts:2;
y1 = cos(5*pi*t_samples) + sin(10*pi*t_samples);

figure()

subplot(2,2,1)
plot(t_fine,xt)
hold on;
stem(t_samples,y1)
title("Sampling Interval Ts = 0.1s")
ylabel('x(t)')
xlabel('time')
legend('Original Signal','Sampled Signal')


% zero order hold

y2 = interp1(t_samples,y1,t_fine,'previous');

subplot(2,2,2)
plot(t_fine,xt)
hold on;
plot(t_fine,y2)
title("Zero Order Hold")
ylabel('x(t)')
xlabel('time')
legend('Original Signal','Sampled Signal')


%linear interpolation

y3 = interp1(t_samples,y1,t_fine,'linear');

subplot(2,2,3)
plot(t_fine,xt)
hold on;
plot(t_fine,y3);
title("Linear Interpolation")
ylabel('x(t)')
xlabel('time')
legend('Original Signal','Sampled Signal')

%sinc interpolation

n = 0:1:20;
y4 = sinc_recon(n,y1,Ts,t_fine);

subplot(2,2,4)
plot(t_fine,xt)
hold on;
plot(t_fine,y4)
title("SINC interpolation")
ylabel('x(t)')
xlabel('time')
legend('Original Signal','Sampled Signal')

%MAE

disp('Maximum Absolute Error:');

j = (t_fine>=0.25 & t_fine <=1.75);

%For zero hold interpolation
max_zero_hold = max(y2(j) - xt(j));
disp('zero order hold :')
disp(max_zero_hold);

%For linear intrpolation41
max_linear = max(y3(j) - xt(j));
disp('linear interpolation :');
disp(max_linear);

%for sinc interpolation
max_sinc = max(y4(j) - xt(j));
disp('Sinc interpolation');
disp(max_sinc);

 


