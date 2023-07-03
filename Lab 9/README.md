# Lab9

```
|_Lab-9-Meghanatedla
    |_ Result
               
    |_ Code
    
    |_ README.md
    |_Synthesized_Audio
```

- _SineSum.m_: Generates the samples of x(t) which is the sum of different sinusoids.
- _harmonics.m_: Generates a note of frequency f<sub>0</sub>
- _envelope.m_: Creates a ADSR envelope for the Signal
- _my_synthesizer.m_: Synthesizes music by constructing M notes in a specified sequence

## Question 4

- _q4_a.m_: Synthesizes a signal with N = 5, amplitude a<sub>k</sub> = 1/k<sup>2</sup>, P = zeros, f<sub>s</sub> = 10kHz, F_notes = 50:5:100 and all notes with duration 1sec
- _q4_b.m_:Synthesizes a signal with N = 5, amplitude a<sub>k</sub> = 1/k<sup>2</sup>, P = zeros, f<sub>s</sub> = 10kHz, F_notes = 100:-10:40 and all notes with duration 1sec
- _q4_c.m_: Synthesizes a random tune with N = 5, m = 5, amplitude a<sub>k</sub> = 1/k<sup>2</sup>, P = zeros, f<sub>s</sub> = 10kHz, F_notes = 50 + 50*rand(1,M) and td_notes = 0.5 + rand(1, M) 
- _q4_d.m_: Using different a<sub>k</sub>, F_notes, td_notes to sunthesize  unique tune
