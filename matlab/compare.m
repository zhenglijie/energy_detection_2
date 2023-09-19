clc;
clear all;
fp = fopen('F:\Users\Lenovo\Desktop\fpga_zynq\energy_detection_2\matlab\result_matlab.txt', 'r');
matlab_result = zeros(0, 1024);
for i = 1 : 1024
    %s(i)
    matlab_result(i) = fscanf(fp, '%d', 1);
end
fclose(fp);

fp = fopen('F:\Users\Lenovo\Desktop\fpga_zynq\energy_detection_2\matlab\result_fft_ip_scale.txt', 'r');
fft_ip_scale_result = zeros(0, 1024);
for i = 1 : 1024
    %s(i)
    fft_ip_scale_result(i) = fscanf(fp, '%d', 1);
end
fclose(fp);

fp = fopen('F:\Users\Lenovo\Desktop\fpga_zynq\energy_detection_2\matlab\result_fft_ip_unscale.txt', 'r');
fft_ip_unscale_result = zeros(0, 1024);
for i = 1 : 1024
    %s(i)
    fft_ip_unscale_result(i) = fscanf(fp, '%d', 1);
end
fclose(fp);

N = 1 : 1024;

subplot(2, 1, 1);
plot(N, matlab_result, 'red', N, fft_ip_scale_result * 256, 'blue');
title("matlab\_results and fft\_ip\_scale\_results");
xlabel('n');
ylabel('y');
legend('matlab\_results', 'fft\_ip\_scale\_results');

subplot(2, 1, 2);
plot(N, matlab_result, 'red', N, fft_ip_unscale_result, 'blue');
title("matlab\_results and fft\_ip\_unscale\_results");
xlabel('n');
ylabel('y');
legend('matlab\_results', 'fft\_ip\_unscale\_results');
