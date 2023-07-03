# Lab 4

```
|_lab-4-Meghanatedla

    |_ Results
               
    |_ code
        
    |_ Report.pdf
    |_ README.md
 ```

## Question 1
- _DT_Fourier.m_ is a matlab function that calculates the Discrete Time Fourier Transform of x[n]
- _q1_b.m_ Computes the DTFT and Plots the DTFT Spectrum (i.e. magnitude, phase, real, imaginary parts) for each of the following signals:
1. unit impulse d[n]
2. shifted unit impulse d[n+3]
3. rectangular pulse from -3 to 3
4. finite duration sinusoial wave
- _q1_c.m_ computes the DTFT of signal a<sup>n</sup> u[n] and plots two time domain signals (corresponding to a = b and a = -b) and their DTFT magnitude spectrum for b = 0.01, 0.5 and 0.99

## Question 2
- _q2_c.m_ generates a sine wave s[n]=5sin(w0n) and its noisy version given by x[n] = s[n] + v[n]
- _q2_d.m_ filters the signal x[n] with the moving average filter using the command conv() for M = 5, 21, 51
- _q2_f.m_ computes DTFT of noisy and filtered signals for different values of m
- _q2_g.m_ a differentiator filter is used instead of the moving average filter. Computes DTFT of noisy and filtered signals.
-
## Question 3
- _Inverse_DTFT_ is a matlab function that computes the inverse DTFT.
- _q3_a.m_ computes the inverse DTFT for the frequency domain rectangular wave which is in the interval[-pi, pi] where w<sub>c</sub> = pi/16
- _q3_b.m_ the inverse DTFT for the same function is computed with  w<sub>c</sub> = pi/8, pi/4, pi/2 and pi
- _q3_c.m_ computes inverse DTFT when the DTFT is given by the band-pass signal. w<sub>1</sub> = pi/8 and w<sub>2</sub>=pi/4; w<sub>1</sub> = pi/4 and w<sub>2</sub>=pi/2;
