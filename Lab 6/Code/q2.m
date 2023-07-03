 t_fine = 0:0.001:2;

 xt = cos(5*pi*t_fine) + sin(10*pi*t_fine);

 figure()
 plot(t_fine, xt)
 title("Continuous Time Signal")
 ylabel("x(t)")
 xlabel("t")

 Ts = 0.1;
 t_samples = 0:Ts:2;

xn = cos(5*pi*t_samples) + sin(10*pi*t_samples);

 figure()
 stem(t_samples, xn)
 title("Sampled Signal")
 ylabel("x[n]")
 xlabel("n")

