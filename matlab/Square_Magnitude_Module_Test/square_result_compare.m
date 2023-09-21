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

fft_y = fft(y, N);

square_mag_matlab_result = zeros(1024, 0);
for i = 1 : N
    realx = real(fft_y(i));
    imagx = imag(fft_y(i));
    square_mag_matlab_result(i) = realx * realx + imagx * imagx;
end

fp = fopen('F:\Users\Lenovo\Desktop\fpga_zynq\energy_detection_2\matlab\Square_Magnitude_Module_Test\result_square_mag.txt', 'r');
square_mag_vivado_result = zeros(1024, 0);
for i = 1 : N
    x = fscanf(fp, '%d', 1);
    square_mag_vivado_result(i) = x * 256 * 256;
end

plot(n, square_mag_matlab_result, 'red',  n, square_mag_vivado_result, '--b');
title("square\_mag\_matlab\_result");
xlabel('n');
ylabel('square\_mag\_y');
legend('matlab\_square\_mag\_results', 'vivado\_square\_mag\_results');

