t_fine = -10:0.001:10 ;  

figure()
 
Ts = 0.5;
t_sample = -1:Ts:1; 
xn = 1-abs(t_sample);

n = -1/Ts:1/Ts; 
xr = sinc_recon(n, xn,Ts,t_fine); 

subplot(2,2,1)
stem(t_sample, xn) 
hold on;
plot(t_fine, xr) 
title("Ts = 0.5")
ylabel("sinc reconstruction of x(t)")
xlabel("time")
legend("sinc", "sampled")

%---------------------------------------------

Ts = 0.2;
t_sample = -1:Ts:1; 
xn = 1-abs(t_sample);

n = -1/Ts:1/Ts; 
xr = sinc_recon(n, xn,Ts,t_fine); 

subplot(2,2,2)
stem(t_sample, xn) 
hold on;
plot(t_fine, xr) 
title("Ts = 0.2")
ylabel("sinc reconstruction of x(t)")
xlabel("time")
legend("sinc", "sampled")

%--------------------------------------------

Ts = 0.1;
t_sample = -1:Ts:1; 
xn = 1-abs(t_sample);

n = -1/Ts:1/Ts; 
xr = sinc_recon(n, xn,Ts,t_fine); 

subplot(2,2,3)
stem(t_sample, xn) 
hold on;
plot(t_fine, xr) 
title("Ts = 0.1")
ylabel("sinc reconstruction of x(t)")
xlabel("time")
legend("sinc", "sampled")

%------------------------------------------

Ts = 0.05;
t_sample = -1:Ts:1; 
xn = 1-abs(t_sample);

n = -1/Ts:1/Ts; 
xr = sinc_recon(n, xn,Ts,t_fine); 

subplot(2,2,4)
stem(t_sample, xn) 
hold on;
plot(t_fine, xr) 
title("Ts = 0.05")
ylabel("sinc reconstruction of x(t)")
xlabel("time")
legend("sinc", "sampled")

sgtitle("x(t) is a Triangular Pulse")