clear
clc
close all

a=[3 -4 2];
b=[1 2];
n=0:20;
subplot(2,2,1);
impz(b,a,20);  %离散时间系统冲击响应
title('冲击响应');
subplot(2,2,2);
zplane(b,a);   %离散时间系统零极点图
title('零极点图');
subplot(2,2,3);
stepz(b,a,20); %离散时间系统阶跃响应
title('阶跃响应');