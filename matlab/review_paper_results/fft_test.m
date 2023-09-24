clear all;
clc;

N = 1024;
n = 1 : N;
fs = 10000000; %10Mhz
t = n / fs;

%signal
f1 = 1000000; %1Mhz
f2 = 50000; %50khz
y = sin(2 * pi * f2 * t) .* exp(1i * (2 * pi * f1 * t));


subplot(3, 1, 1);
plot(t, y); %ignore img
title("时域");
xlabel('t');
ylabel('y');
grid on

%fft
f = (0 : N-1) * (fs / N) / 10000000;
fft_y = fft(y, N);
fft_y = abs(fft_y);

subplot(3, 1, 2);
plot(f, fft_y);
title("FFT");
xlabel('f');
ylabel('y');
grid on


