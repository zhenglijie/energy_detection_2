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

new_y = [y(1, 345:1024), y(1, 1:344)];

%time_domain
subplot(6, 1, 1);
plot(t, int32(real(y))); %ignore img
title("时域");
xlabel('t');
ylabel('y');
grid on

%%%%%%%
f = (0 : N-1) * (fs / N);
fft_y = fft(y, N);

subplot(6, 1, 2);
plot(f, fft_y); %ignore img
title("频域");
xlabel('f');
ylabel('y');
grid on

abs_fft_y = abs(fft_y);

subplot(6, 1, 3);
plot(f, abs_fft_y); %ignore img
title("频域");
xlabel('f');
ylabel('abs(y)');
grid on
%%%%%%%%

%time_domain
subplot(6, 1, 4);
plot(t, int32(real(new_y))); %ignore img
title("时域");
xlabel('t');
ylabel('y');
grid on

%%%%%%%
fft_new_y = fft(new_y, N);
abs_fft_new_y = abs(fft_new_y);

subplot(6, 1, 5);
plot(f, fft_new_y); %ignore img
title("频域");
xlabel('f');
ylabel('y');
grid on

subplot(6, 1, 6);
plot(f, abs_fft_new_y); %ignore img
title("频域");
xlabel('f');
ylabel('abs(y)');
grid on
%%%%%%%

% for i = 1 : 1024
%     if (abs(abs_fft_new_y(i) - abs_fft_y(i)) > 0.0000001)
%         disp(i);
%     end
% end 


