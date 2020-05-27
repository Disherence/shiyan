clear
clc
close all
fs = 80; %采样频率为20Hz
f = 20; %定义信号的频率
n = (0:1 / fs:1)';
xs = cos(2 * pi * f * n);
t = linspace(0, 1, 500)'; %生成线性间距矢量
fc = 30; %滤波器截至频率
ya = 1 / fs * 2 * pi * fc / pi * sinc(2 * fc * t(:, ones(size(n))) - 2 * fc * n(:, ones(size(t)))') * xs;
subplot(211), stem(n, xs)  %绘制离散序列数据
hold on, plot(t, cos(2 * pi * f * t))
subplot(212), plot(t, cos(2 * pi * f * t), 'r', t, ya, 'g')
