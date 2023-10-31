clc;
clear all;

N = 1024;%采样点数
n = 1:N;
fs = 1000; %1000hz
t = n / fs; %时间轴

%signal
f0 = 100;
f1 = 200;
f2 = 300;
y1 = 100 * exp(1i * 2 * pi * f0 * t);
y2 = 100 * exp(1i * 2 * pi * f1 * t);
y3 = 100 * exp(1i * 2 * pi * f2 * t);
y = y1 + y2 + y3; %signal

real_y = int32(real(y));
imag_y = int32(imag(y));
a = [real_y; imag_y];

s = int32(bitshift(imag_y, 16) + real_y);
s = s';

fp = fopen('F:\Users\Lenovo\Desktop\fpga_zynq\energy_detection_2\matlab\FFT_Test\data_before_fft.txt', 'w');
%fprintf(fp, "%s\n\n", "memory_initialization_radix = 10");
%fprintf(fp, "%s\n", "memory_initialization_vector = ");
for i = 1 : N
    %s(i)
    fprintf(fp, '%.0f\n',s(i));
end
fclose(fp);

%time_domain
subplot(3, 1, 1);
plot(t, y); %ignore img
title("时域");
xlabel('t');
ylabel('y');
grid on

%fft
f = (0 : N-1) * (fs / N);
fft_y = fft(y, N);
abs_fft_y = abs(fft(y, N));

subplot(3, 1, 2);
plot(f, fft_y); %ignore img
title("FFT");
xlabel("f");
ylabel("y");
grid on;

%fft abs
subplot(3, 1, 3);
plot(f, abs_fft_y);
title("FFT取绝对值");
xlabel('f');    
ylabel('y');
grid on;

fp = fopen('F:\Users\Lenovo\Desktop\fpga_zynq\energy_detection_2\matlab\FFT_Test\result_matlab.txt', 'w');
for i = 1 : N
    %abs_fft_y(i)  
    fprintf(fp, '%.f\n',abs_fft_y(i));
end

