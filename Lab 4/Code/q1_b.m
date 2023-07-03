w = -10:0.01:10;

%-----------------------------Unit Impulse--------------------------------

x1 = zeros(10, 1);
x1(1) = 1;
N01 = 1;
y1 = DT_Fourier(x1, N01, w);

figure()
subplot(2,2,1);
plot(w,real(y1));
title('Real part of X(e^(^j^w^))')
ylabel('Real part of X(e^(^j^w^))') 
xlabel('w')

subplot(2,2,2);
plot(w,imag(y1));
title('Imaginary part of X(e^(^j^w^))')
ylabel('Imaginary part of X(e^(^j^w^))') 
xlabel('w')

subplot(2, 2, 3)
plot(w,abs(y1));
title('Magnitude Spectrum')
ylabel('|X(e^(^j^w^))|') 
xlabel('w')

subplot(2,2,4);
plot(w,angle(y1));
title('Phase Spectrum')
ylabel('Phase of X(e^(^j^w^))') 
xlabel('w') 

sgtitle('Unit Impulse')

%------------------------Shifter Unit Impulse-----------------------------

x2 = zeros(15, 1);
x2(9) = 1;
N02 = 12;
y2 = DT_Fourier(x2, N02, w);

figure()
subplot(2,2,1);
plot(w,real(y2));
title('Real part of X(e^(^j^w^))')
ylabel('Real part of X(e^(^j^w^))') 
xlabel('w')

subplot(2,2,2);
plot(w,imag(y2));
title('Imaginary part of X(e^(^j^w^))')
ylabel('Imaginary part of X(e^(^j^w^))') 
xlabel('w')

subplot(2, 2, 3)
plot(w,abs(y2));
title('Magnitude Spectrum')
ylabel('|X(e^(^j^w^))|') 
xlabel('w')

subplot(2,2,4);
plot(w,angle(y2));
title('Phase Spectrum')
ylabel('phase of X(e^(^j^w^))') 
xlabel('w') 

sgtitle('Shifted Unit Impulse')

%--------------------------Rectangular Pulse------------------------------

x3 = ones(7, 1);
N03 = 4;
y3 = DT_Fourier(x3, N03, w);

figure()
subplot(2,2,1);
plot(w,real(y3));
title('Real part of X(e^(^j^w^))')
ylabel('Real part of X(e^(^j^w^))') 
xlabel('w')

subplot(2,2,2);
plot(w,imag(y3));
title('Imaginary part of X(e^(^j^w^))')
ylabel('Imaginary part of X(e^(^j^w^))') 
xlabel('w')

subplot(2, 2, 3)
plot(w,abs(y3));
title('Magnitude Spectrum')
ylabel('|X(e^(^j^w^))|') 
xlabel('w')

subplot(2,2,4);
plot(w,angle(y3));
title('Phase Spectrum')
ylabel('Phase of X(e^(^j^w^))') 
xlabel('w') 

sgtitle('Rectangular Pulse')

%----------------------finite Duration Sinusoid---------------------------

n = -200:1:200;
w0 = pi/4;
x4 = sin(w0.*n);
N04 = 201;
y4 = DT_Fourier(x4, N04, w);

figure()
subplot(2,2,1);
plot(w,real(y4));
title('Real part of X(e^(^j^w^))')
ylabel('Real part of X(e^(^j^w^))') 
xlabel('w')

subplot(2,2,2);
plot(w,imag(y4));
title('Imaginary part of X(e^(^j^w^))')
ylabel('Imaginary part of X(e^(^j^w^))') 
xlabel('w')

subplot(2, 2, 3)
plot(w,abs(y4));
title('Magnitude Spectrum')
ylabel('|X(e^(^j^w^))|') 
xlabel('w')

subplot(2,2,4);
plot(w,angle(y4));
title('Phase Spectrum')
ylabel('Phase of X(e^(^j^w^))') 
xlabel('w') 

sgtitle('Finite Duration Sinusoid')