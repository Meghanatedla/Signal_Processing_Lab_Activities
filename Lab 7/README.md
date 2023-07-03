# Lab7

```
|_Lab-7-Meghanatedla
    |_ Result
               
    |_ Code
        
    |_ Report.pdf
    |_ README.md
    |_ Audio_File
```

## Question 1
- _quadratic_quant.m_: A MATLAB function that implements a quadratic non-uniform quantizer.
- _q1_b.m_: 
    - Plots the sampled signal, quantized signal and the quantization error for the input signal x(t) = sin(2πf<sub>0</sub>t).
    - Plots Histogram of Quantization Error for B = 4 and B = 3.
- _q1_e.m_: 
    - Plots Histogram of Quantization Error for different values of B (B = 1:8).
    - Plots the Maximum Absolute Quantization Error versus B (B = 1:8).
- _q1_f.m_: Plots Signal to Quantization Noise Ratio(SQNR) versus B (B = 1:8).

## Question 2
- _q2.m_: 
    - loads a .wav file ("Sound.wav"), Quantizes this signal with B = 3 and a = 1. 
    - Performs Quantization for different levels (B = 1:8) and  plays the quantized signal.
