# Lab1

## Question 1
- Matlab Function _fourierCoeff_ returns a vector which contains the Fourier series coefficients {a-N,...a-1, a0, a1,...aN}
- _q1_a.m_ plots fourier coefficients for x(t) = 2cos(2*pi*t) + cos(6*pi*t), T = 1 and N = 5
- _q1_b.m_ plots fourier coefficients for x(t) = 1, -T1<t<T1; 0, T1<|t|<T/2, T = 1, N = 10, T = 4*T1

## Question 2
- Matlab Function _partialfouriersum_ computes a partial fourier sum from a given vector of fourier series coefficients {ak}
- _q2_a.m_ takes the output of question 1 and reconstructs one period of cosine wave, T = 1 and time_grid = -0.5:0.01:0.5
- _q2_b.m_ plots original signal and reconstructed signal in the same plot
- _q2_c.m_ computes MAE (maximum absolute error) and RMS (root mean squared error)

## Question 3
- _q3_b.m_ plots scaled coefficients Tak for a real periodic square wave that has amplitude 1 in [-T1, T1] and period T. T1 = 0.1, T = 1, 10, 20, 30, N = 10*T
- _q3_c.m_ plots the reconstructed signal, T = 1, N = 10, 50, 100, 1000

## Question 4
- _q4_a.m_ plots fourier coefficients for x1(t) = abs(t), -1/4<t<1/4
- _q4_b.m_ plots fourier coefficients for x2(t) = t, -1/4<t<1/4
