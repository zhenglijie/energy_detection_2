clear all
clc

sim('generate_signal');

signal = ans.signal(1025:2048);

fft_data = ans.fft_data(1025:2048);

subplot(6, 1, 1);
plot(1:1024, signal);
xlabel('t');
ylabel('y');
title('simulink信号 时域')

%(0 : N-1) * (fs / N)

subplot(6, 1, 2);
plot((0:1023)*(1000/1024), fft_data);
xlabel('f');
ylabel('y');
title('simulink信号 频域');

subplot(6, 1, 3);
plot((0:1023)*(1000/1024), abs(fft_data));
xlabel('f');
ylabel('abs(y)');
title('simulink信号 频域');

N = 1024;%采样点数
n = 1:N;
fs = 1000; %1000hz
t = n / fs; %时间轴

%signal
f0 = 100;
f1 = 200;
f2 = 300;
y1 = 100 * sin(2 * pi * f0 * t);
y2 = 100 * sin(2 * pi * f1 * t);
y3 = 100 * sin(2 * pi * f2 * t);
y = y1 + y2 + y3; %signal

power = norm(y) / N;

y = awgn(y, 10, 'measured');

subplot(6, 1, 4);
plot(n, y(1:1024));
xlabel('t');
ylabel('y');
title('matlab信号 时域');

%FFT
f = (0 : N-1) * (fs / N);
fft_y = fft(y, N);
abs_fft_y = abs(fft(y, N));

subplot(6, 1, 5);
plot(f, fft_y);
xlabel('f');
ylabel('y');
title('matlab信号 频域')

subplot(6, 1, 6);
plot(f, abs_fft_y);
xlabel('f');
ylabel('abs(y)');
title('matlab信号 频域')

%%
%     这个程序测试出1 hz = 2*pi rad/s，所以在simulink设置的时候，注意这个，
% 然后采样时间是没有问题的，1000hz就是0.001s，还有就是知道了simulink确实可以
% 和FPGA交互。
%  (1) 现在信号源搞定了，关于awgn，需要计算一下信号的功率设定一下awgn模块的参数即可。
%  (2) FPGA输出数据我simulink也可以接收到，所以我就可以让其多跑很久，能量
%   我甚至可以不用加窗，就直接最后累加即可，结果处理也搞定了。
%  (3) 修改FPGA的阈值，应该也是可以的。
%  (4) 最后一个任务，让simulink和FPGA模块的接口适配，能跑起来就可以进行实验了。
%%
