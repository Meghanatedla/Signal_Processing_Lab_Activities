# Lab6

```
|_Lab-6-Meghanatedla
    |_ Result
               
    |_ Code
        
    |_ Report.pdf
    |_ README.md
    |_ Audio_Files
```

## Question 1
- _continuousFT.m_: Matlab function to numerically compute continuous time FT of signal x(t) which has finite support in [a, b] and is zero outside.
- _q4_b.m_: Computes CTFT for a rectangular pulse of unit amplitude in [-T, T] where T = 2.
- _q4_c.m_: Computes CTFT for a rectangular pulse of unit amplitude in [-T, T] where T = 1 and T = 4.
- _q4_d.m_: Computes CTFT for x(t) = e<sup>jt</sup> and x(t) = cos(t) in the interval [-π, π]
- _q4_e.m_: Computes CTFT for a triangle pulse of height 1 and base/support [-1, 1]

## Question 2
- _q2.m_: Plots continuous time signal x(t) = cos(5πt) + sin(10πt) and the sampled signal x[n] = x(nTs) with sampling interval Ts = 0.1s

## Question 3
- _radix2fft.m_: Implements the decimation in time radix 2 FFT algorithm for an input vector whose length is a power of 2
- _q3.m_: Verifies the output of the function with that of fft().

## Question 4
- _myLPF.m_: matlab function that computes the output signal FS coefficients for a Low pass filter
- _myHPF.m_: matlab function that computes the output signal FS coefficients for a High pass filter
- _NonIdeal.m_: matlab function that computes the output signal FS coefficients for a Non Ideal filter
- _partialfouriersum.m_: Computes partial fourier sum from a given vector of FS coefficients
- _fourierCoeff.m_: Computes FS coefficients of a given signal
- _q4_b.m_: script to visualize input and output signals of the filter for different values of cut-off frequency. x(t) = cos(t)
- _q4_e.m_: script to visualize input and output signals of the filter for different values of cut-off frequency. x(t) = sin(2t) + cos(3t)

## Question 5
- _q5.m_: Performs reconstruction of signal x(t) = cos(5πt) + sin(10πt) using three different methods - zero order hold, linear interpolation, sinc reconstruction.

## Question 6
- _q6.m_: Performs sinc reconstruction of non-band-limited signal (continuous time triangular pulse) for different sampling intervals Ts.

## Question 7
- _q7.m_: Analyses an audio file

## Question 8
- _q8.m_: To observe the effect of aliasing for the signal x(t) = cos(5πt), reconstruction of signal using sinc interpolation for different values of Ts.

