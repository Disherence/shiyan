clear
clc
close all
fs = 80; %����Ƶ��Ϊ20Hz
f = 20; %�����źŵ�Ƶ��
n = (0:1 / fs:1)';
xs = cos(2 * pi * f * n);
t = linspace(0, 1, 500)'; %�������Լ��ʸ��
fc = 30; %�˲�������Ƶ��
ya = 1 / fs * 2 * pi * fc / pi * sinc(2 * fc * t(:, ones(size(n))) - 2 * fc * n(:, ones(size(t)))') * xs;
subplot(211), stem(n, xs)  %������ɢ��������
hold on, plot(t, cos(2 * pi * f * t))
subplot(212), plot(t, cos(2 * pi * f * t), 'r', t, ya, 'g')
