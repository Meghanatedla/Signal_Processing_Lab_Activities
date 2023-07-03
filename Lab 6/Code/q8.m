figure()

t_fine=0:0.001:2;   

Ts1=0.1;
t_samples1=0:Ts1:2;
n=0:2/Ts1;
xn1 = cos(5*pi*t_samples1);

xr1=sinc_recon(n,xn1,Ts1,t_fine);

subplot(2,2,1)
stem(t_samples1,xn1)
hold on;
plot(t_fine,xr1)
title("Sinc interpolation with Ts = 0.1")
ylabel('x(t)')
xlabel('time')
legend('Sampled Signal','Reconstructed Signal')

%-------------------------------------------------

Ts2=0.2;
t_samples2=0:Ts2:2;
n=0:2/Ts2;
xn2=cos(5*pi*t_samples2);

xr2=sinc_recon(n,xn2,Ts2,t_fine);

subplot(2,2,2)
stem(t_samples2,xn2)
hold on;
plot(t_fine,xr2)
title("Sinc interpolation with Ts = 0.2")
ylabel('x(t)')
xlabel('time')
legend('Sampled Signal','Reconstructed Signal')

%-------------------------------------------------

Ts3=0.3;
t_samples3=0:Ts3:2;
n=0:2/Ts3;
xn3=cos(5*pi*t_samples3);

xr3=sinc_recon(n,xn3,Ts3,t_fine);

subplot(2,2,3)
stem(t_samples3,xn3)
hold on;
plot(t_fine,xr3)
title("Sinc interpolation with Ts = 0.3")
ylabel('x(t)')
xlabel('time')
legend('Sampled Signal','Reconstructed Signal')

%------------------------------------------------

Ts4=0.4;
t_samples4=0:Ts4:2;
n=0:2/Ts4;
xn4=cos(5*pi*t_samples4);

xr4=sinc_recon(n,xn4,Ts4,t_fine);

subplot(2,2,4)
stem(t_samples4,xn4)
hold on;
plot(t_fine,xr4)
title("Sinc interpolation with Ts = 0.4")
ylabel('x(t)')
xlabel('time')
legend('Sampled Signal','Reconstructed Signal')

sgtitle("x(t) = cos(5πt)")