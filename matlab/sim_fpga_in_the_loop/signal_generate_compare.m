clear all
clc
N = 1024;%采样点数
n = 1:N;
fs = 1000; %1000hz
t = n / fs; %时间轴

%% simulink generate signal
sim('energy_detect_th');

signal = ans.signal(1025:2048);

in_fft_ip_data = ans.in_fft_ip_data(1025:2048);

subplot(6, 1, 1);
plot(t, signal);
xlabel('t');
ylabel('y');
title('simulink信号 时域')

subplot(6, 1, 2);
plot(t, in_fft_ip_data);
xlabel('t');
ylabel('y');
title('simulink信号输入FFT ip')

%% matlab generate signal
f0 = 100;
f1 = 200;
f2 = 300;
y1 = 10 * sin(2 * pi * f0 * t);
y2 = 10 * sin(2 * pi * f1 * t);
y3 = 10 * sin(2 * pi * f2 * t);
y = y1 + y2 + y3; %signal
y = awgn(y, 10, 'measured');

subplot(6, 1, 3);
plot(t, y);
xlabel('t');
ylabel('y');
title('matlab信号 时域')

real_y = int32(real(y));
imag_y = int32(imag(y));

y = int32(bitshift(imag_y, 16) + real_y);

subplot(6, 1, 4);
plot(t, y);
xlabel('t');
ylabel('y');
title('matlab信号输入FFT ip')



