clear
clc
close all

t = -10:0.01:10;
x1 = sin(5 * t);
x2 = exp(2 * t);
x3 = exp(-2 * t) .* sin(5 * pi * t);
x4 = sin(t + eps) ./ (t + eps);
x5 = exp(-(t / 2).^2);
subplot(231), plot(t, x1)
title('正弦信号')
subplot(232), plot(t, x2)
title('指数信号')
subplot(233), plot(t, x3)
title('指数衰减信号')
subplot(234), plot(t, x4)
title('抽样信号')
subplot(235), plot(t, x5)
title('钟形信号')

x11 = sin(2 * (2 * t - 5));
figure, subplot(111), plot(t, x11)
title('正弦信号变换')
x22 = exp(-2 * (2 * t - 5));
figure, subplot(111), plot(t, x22)
title('指数信号变换');