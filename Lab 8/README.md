# Lab8

```
|_Lab-8-Meghanatedla
    |_ Result
               
    |_ Code
        
    |_ Report.pdf
    |_ README.md
```

## Question 1
- _Inverse_DTFT.m_: Computes the inverse DTFT
- _q1_b.m_: Computes and plots magnitude and phase spectrum of 1001-point DFT of h[n] where h[n] = h<sub>d</sub>[n]w[n]. w[n] is a rectangular window
- _q1_c.m_: Computes and plots magnitude and phase spectrum of 1001-point DFT of h[n] where h[n] = h<sub>d</sub>[n]w[n]. w[n] is a blackman window
- _q1_e.m_: Passes the signal x[n] = cos(πn/16) + 0.25sin(πn/16) and x<sub>1</sub>[n] = cos(πn/16) + 0.25randn(1, 201) through the two filters designed in _q1_b.m_ and _q1_c.m_
- _q1_f.m_: constructs a new filter h<sub>1</sub>[n] = (-1)<sup>n</sup>h[n] and computes its 2001-point DFT

## Question 2
- _q2_a.m_: plots 2001-point frequency response of the FIR filter.
- _q2_b.m_: plots 2001-point frequency response of the IIR filter.
- _q2_d.m_: uses fvtool() to visualize various aspects of the notch filters
- _q2_e.m_: loads the handel sound file and then adds a sinusoidal signal
- _q2_f.m_: Apply the two notch filters to the modified signal using filter()

