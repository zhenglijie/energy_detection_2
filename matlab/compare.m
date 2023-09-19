clc;
close all;
clear all;
fp = fopen('F:\Users\Lenovo\Desktop\fpga_zynq\energy_detection_2\matlab\result_matlab.txt', 'r');
matlab_result = zeros(0, 1024);
for i = 1 : 1024
    %s(i)
    matlab_result(i) = fscanf(fp, '%d', 1);
end
fclose(fp);

fp = fopen('F:\Users\Lenovo\Desktop\fpga_zynq\energy_detection_2\matlab\result_fft_ip_scale.txt', 'r');
fft_ip_scale_result = zeros(2, 1024);
fft_ip_scale_result_abs = zeros(0, 1024);
for i = 1 : 1024
    x = fscanf(fp, '%d %d', 2);
    fft_ip_scale_result(i, 1) = x(1); %real
    fft_ip_scale_result(i, 2) = x(2); %imag
    binstr1 = dec2bin(fft_ip_scale_result(i, 1), 16); %real
    binstr2 = dec2bin(fft_ip_scale_result(i, 2), 16); %imag
    mod = bitshift(1, 15);
    if binstr1(1) == '1' %real
        real = -1 * (mod - bin2dec(binstr1(2:16)));
    else
        real = bin2dec(binstr1(2:16));
    end
    if binstr2(1) == '1' %imag
        imag = -1 * (mod - bin2dec(binstr2(2:16)));
    else
        imag = bin2dec(binstr2(2:16));
    end
    fft_ip_scale_result_abs(i) = abs(complex(real, imag));
    %disp(complex(real, imag));
end
fclose(fp);

N = 1 : 1024;

subplot(2, 1, 1);
plot(N, matlab_result, 'red', N, fft_ip_scale_result_abs * 256, 'blue');
title("matlab\_results and fft\_ip\_scale\_results\_abs");
xlabel('n');
ylabel('y');
legend('matlab\_results', 'fft\_ip\_scale\_results\_abs');

% subplot(2, 1, 2);
% plot(N, matlab_result, 'red', N, fft_ip_unscale_result, 'blue');
% title("matlab\_results and fft\_ip\_unscale\_results");
% xlabel('n');
% ylabel('y');
% legend('matlab\_results', 'fft\_ip\_unscale\_results');
