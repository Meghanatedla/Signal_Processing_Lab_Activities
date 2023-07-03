% 1MG
%bit rate = 256kbps
[y, Fs] = audioread("file_example_WAV_1MG.wav");

%Fs = 8000

duration = length(y)/Fs;

%bit rate = number of bits * sampling frequency

Num_of_bits = (256 * 1000)/Fs;
Levels_of_Quant = 2.^Num_of_bits;

disp("file_example_WAV_1MG.wav")
disp("Duration:")
disp(duration)
disp("Number of Bits:")
disp(Num_of_bits)
disp("Levels of Quantization:")
disp(Levels_of_Quant)

%%
sound(y, Fs)
pause(35);

%%
sound(y, 0.7*Fs)
pause(35);

%%
sound(y, 1.6*Fs)
pause(35);

%%
%-------------------------

% 2MG
%bit rate = 512kbps
[y, Fs] = audioread("file_example_WAV_2MG.wav");

%Fs = 8000

duration = length(y)/Fs;

%bit rate = number of bits * sampling frequency

Num_of_bits = (512 * 1000)/Fs;

disp("file_example_WAV_2MG.wav")
disp("Duration:")
disp(duration)
disp("Number of Bits:")
disp(Num_of_bits)
disp("Levels of Quantization:")
disp(Levels_of_Quant)

%%
sound(y, Fs)
pause(35);

%%
%----------------------------

% 5MG
%bit rate = 1411kbps
[y, Fs] = audioread("file_example_WAV_5MG.wav");

%Fs = 8000

duration = length(y)/Fs;

%bit rate = number of bits * sampling frequency

Num_of_bits = (1411 * 1000)/Fs;

disp("file_example_WAV_5MG.wav")
disp("Duration:")
disp(duration)
disp("Number of Bits:")
disp(Num_of_bits)
disp("Levels of Quantization:")
disp(Levels_of_Quant)

%%
sound(y, Fs)
pause(31);

%%
%----------------------------

% 10MG
%bit rate = 1411kbps
[y, Fs] = audioread("file_example_WAV_10MG.wav");

%Fs = 8000

duration = length(y)/Fs;

%bit rate = number of bits * sampling frequency

Num_of_bits = (1411 * 1000)/Fs;

disp("file_example_WAV_10MG.wav")
disp("Duration:")
disp(duration)
disp("Number of Bits:")
disp(Num_of_bits)
disp("Levels of Quantization:")
disp(Levels_of_Quant)

%%
sound(y, Fs)
pause(60);
