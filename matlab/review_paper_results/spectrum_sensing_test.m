clear;
close all;
clc;
T = 50;
Fs = 100;
N =Fs*T; %采样点数
Mc = 1000; %蒙特卡洛实验次数
Pf =(0.01:0.02:1).^2; %虚警概率
SNR_db(1) = -25;
SNR_db(2) = -20;
SNR_db(3) = -15;
for i = 1:3
    SNR(i) = power(10,SNR_db(i)/10); %10 ^ {SNR / 10}
end
%信噪比SNR = 10lg {Ps / Pn}

for i=1:length(Pf)
    for m=1:3
        s_awgn = 0;
        for kk = 1:Mc
            t = ((kk-1)*N+1:kk*N)/Fs;              %时间轴
            x = randi([0 1],1,100)*2-1; %生成1*100个0~1伪随机数，数都为整数
            xx = rectpulse(x,N/100);
            x = xx.*sin(2*pi*10*t);
            ps = sum(abs(x).^2)/length(x); %信号功率
            noise = randn(1,N); %产生均值为0，方差为1的随机数
            noise = noise-mean(noise); %mean为均值
            noise_awgn = sqrt(ps/SNR(m))*noise/std(noise); %std为标准差
            %标准化，将数据变换为均值为0方差为1的分布
            
            %高斯信道
            re_sig = x + noise_awgn; %接收信号
            
            th(i) = ps/SNR(m)*(N+sqrt(2*N)*sqrt(2)*erfcinv(2*Pf(i))); %门限值,
            % ps/SNR(m)：信号功率 / 信噪比 = 噪声功率。（信噪比的定义）
            power(i) = sum(re_sig.^2); %接收信号能量
            
            if power(i) > th(i)
                s_awgn = s_awgn + 1; %进行判决，检测到一次
            end
        end
        Pd_sim_awgn(m,i) = s_awgn/Mc;   %仿真高斯检测概率，1000次中检测到s_awgn次
    end
end
figure
hold on;
plot(Pf,Pd_sim_awgn(1,:),'*-b',Pf,Pd_sim_awgn(2,:),'*-r',Pf,Pd_sim_awgn(3,:),'*-g');
grid on
legend('SNR=-20dB','SNR=-15dB', 'SNR=-10dB');
title ('不同信噪比的检测对比')
xlabel('Pf');
ylabel('Pd');
