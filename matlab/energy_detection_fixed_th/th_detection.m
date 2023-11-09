clc;
clear all;

N = 1024;%采样点数
n = 1:N;
fs = 1000; %1000hz
t = n / fs; %时间轴

%% original signal
f0 = 100;
f1 = 200;
f2 = 300;
y1 = exp(1i * 2 * pi * f0 * t);
y2 = exp(1i * 2 * pi * f1 * t);
y3 = exp(1i * 2 * pi * f2 * t);
signal = y1 + y2 + y3; 

subplot(5, 2, [1, 2]);
plot(t, signal);
title("signal");
xlabel('t');
ylabel('y');

%% SNR = 10dB
SNR = 10; %信噪比20dB
signal_add_noise = awgn(signal, SNR, 'measured'); %加高斯白噪声
subplot(5, 2, 3);
plot(t, signal_add_noise, 'k');
title("signal + noise (SNR = 10dB)");
xlabel('t');
ylabel('signal + noise');

f = (0 : N-1) * (fs / N);
fft_y = fft(signal_add_noise, N);
abs_fft_y = abs(fft(signal_add_noise, N));

subplot(5, 2, 5);
plot(f, fft_y); %ignore img
title("FFT (SNR = 10dB)");
xlabel("f");
ylabel("y");
grid on;

subplot(5, 2, 7);
plot(f, abs_fft_y); %ignore img
title("abs(FFT) (SNR = 10dB)");
xlabel("f");
ylabel("y");
grid on;

%% SNR = -10dB
SNR = -10; %信噪比20dB
signal_add_noise = awgn(signal, SNR, 'measured'); %加高斯白噪声
subplot(5, 2, 4);
plot(t, signal_add_noise, 'k');
title("signal + noise (SNR = -10db)");
xlabel('t');
ylabel('signal + noise');

f = (0 : N-1) * (fs / N);
fft_y = fft(signal_add_noise, N);
abs_fft_y = abs(fft(signal_add_noise, N));

subplot(5, 2, 6);
plot(f, fft_y); 
title("FFT (SNR = -10dB)");
xlabel("f");
ylabel("y");
grid on;

subplot(5, 2, 8);
plot(f, abs_fft_y); 
title("abs(FFT) (SNR = -10dB)");
xlabel("f");
ylabel("y");
grid on;


%% detect
Pf =(0.01:0.02:1).^2; %虚警概率
%M = 3;
SNR(1) = -25;
SNR(2) = -20;
SNR(3) = -15;
SNR(4) = 10;

for i = 1:length(Pf) %虚警率
    for m = 1 : 4 %信道
        detect_y(i) = 0;
        for kk = 1:100 %次数
            signal_add_noise = awgn(signal, SNR(m), 'measured');
            %signal_energy(i) = sum(abs(signal_add_noise).^2);
            abs_fft_y = abs(fft(signal_add_noise, N));
            signal_add_noise_energy = sum(abs_fft_y.^2);
    
            noise = signal_add_noise - signal; %噪声
            noise_energy = sum(abs(noise).^2); %噪声时域能量
            noise_p = noise_energy / N; %噪声功率
    
            threshold(i) = noise_p * (N + sqrt(2 * N) * sqrt(2) * erfcinv(2 * Pf(i))) * N;
            
            if signal_add_noise_energy > threshold(i)
                detect_y(i) = detect_y(i) + 1;
            end
        end
        detect_diff_channel(m, i) = detect_y(i);
    end
end

subplot(5, 1, 5);
plot(Pf, detect_diff_channel(1, :), '*-b', Pf, detect_diff_channel(2, :), '*-r', ...
    Pf, detect_diff_channel(3, :), '*-g', Pf, detect_diff_channel(4, :), '*-c'); 
legend('SNR = -20dB','SNR = -15dB', 'SNR = -10dB', 'SNR = 10dB');
title("100次实验检测次数");
xlabel("虚警率");
ylabel("检测次数");
grid on;


