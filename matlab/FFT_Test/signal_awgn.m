%% 信号x
t=0:0.01:10;
x=sin(2*pi*t);
subplot(3,2,[1 2]);plot(t,x);title('x');
%% 对比1
% 信噪比和信号指定功率
snr=20;
px_dBW=0;
% 调用awgn函数直接计算
y1=awgn(x,snr,px_dBW); 
subplot(3,2,3);plot(t,y1);title(['awgn(x,',num2str(snr),',',num2str(px_dBW),')']);
% 调用randn函数产生噪声序列再叠加
pn_W=10^((px_dBW-snr)/10);
n=sqrt(pn_W)*randn(1,length(x));
y2=x+n;
subplot(3,2,4);plot(t,y2);title('信号叠加噪声');
%% 对比2
% 信噪比和信号指定功率
snr=10;
px_dBW=10;
% 调用awgn函数直接计算
y1=awgn(x,snr,px_dBW);
subplot(3,2,5);plot(t,y1);title(['awgn(x,',num2str(snr),',',num2str(px_dBW),')']);
% 调用randn函数产生噪声序列再叠加
pn_W=10^((px_dBW-snr)/10);
n=sqrt(pn_W)*randn(1,length(x));
y2=x+n;
subplot(3,2,6);plot(t,y2);title('信号叠加噪声');
