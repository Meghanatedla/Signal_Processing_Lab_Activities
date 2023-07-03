w =  -10:0.01:10;
n = 1:100;
N0 = 1;

%-----------------------------b = 0.01------------------------------------

b = 0.01;

xb1 = b.^n;
yb1 = DT_Fourier(xb1, N0, w);

xb2 = (-b).^n;
yb2 = DT_Fourier(xb2, N0, w);

figure()

subplot(2,2,1);
plot(n,xb1);
title('Time domain signal for a = b')
ylabel('a^n u[n]') 
xlabel('n') 

subplot(2,2,2);
plot(n,xb2);
title('Time domain signal for a = -b')
ylabel('(-a)^n u[n]')  
xlabel('n') 

subplot(2,2,3);
plot(w,abs(yb1));
title('DTFT Magnitude Spectrum for a = b')
ylabel('DTFT Magnitude') 
xlabel('w') 

subplot(2,2,4);
plot(w,abs(yb2));
title('DTFT Magnitude Spectrum for a = -b')
ylabel('DTFT Magnitude')  
xlabel('w') 

sgtitle('b = 0.01')

%----------------------------b = 0.5--------------------------------------
b = 0.5;

xb1 = b.^n;
yb1 = DT_Fourier(xb1, N0, w);

xb2 = (-b).^n;
yb2 = DT_Fourier(xb2, N0, w);

figure()

subplot(2,2,1);
plot(n,xb1);
title('Time domain signal for a = b')
ylabel('a^n u[n]') 
xlabel('n') 

subplot(2,2,2);
plot(n,xb2);
title('Time domain signal for a = -b')
ylabel('(-a)^n u[n]')  
xlabel('n') 

subplot(2,2,3);
plot(w,abs(yb1));
title('DTFT Magnitude Spectrum for a = b')
ylabel('DTFT Magnitude')  
xlabel('w') 

subplot(2,2,4);
plot(w,abs(yb2));
title('DTFT Magnitude Spectrum for a = -b')
ylabel('DTFT Magnitude')  
xlabel('w') 

sgtitle('b = 0.5')

%-----------------------------b = 0.99-------------------------------------
b = 0.99;

xb1 = b.^n;
yb1 = DT_Fourier(xb1, N0, w);

xb2 = (-b).^n;
yb2 = DT_Fourier(xb2, N0, w);

figure()

subplot(2,2,1);
plot(n,xb1);
title('Time domain signal for a = b')
ylabel('a^n u[n]') 
xlabel('n') 

subplot(2,2,2);
plot(n,xb2);
title('Time domain signal for a = -b')
ylabel('(-a)^n u[n]')  
xlabel('n') 

subplot(2,2,3);
plot(w,abs(yb1));
title('DTFT Magnitude Spectrum for a = b')
ylabel('DTFT Magnitude') 
xlabel('w') 

subplot(2,2,4);
plot(w,abs(yb2));
title('DTFT Magnitude Spectrum for a = -b')
ylabel('DTFT Magnitude')  
xlabel('w') 

sgtitle('b = 0.99')

