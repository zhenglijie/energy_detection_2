clear;
close all;
clc;

Fs = 100;
T = 50;
N =Fs*T;
t = ((1-1)*N+1:1*N)/Fs;
x = randi([0 1],1,100)*2-1; %
xx = rectpulse(x,N/100);
x = xx.*sin(2*pi*10*t);
ps = sum(abs(x).^2)/length(x);
