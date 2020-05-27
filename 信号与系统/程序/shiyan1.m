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
title('�����ź�')
subplot(232), plot(t, x2)
title('ָ���ź�')
subplot(233), plot(t, x3)
title('ָ��˥���ź�')
subplot(234), plot(t, x4)
title('�����ź�')
subplot(235), plot(t, x5)
title('�����ź�')

x11 = sin(2 * (2 * t - 5));
figure, subplot(111), plot(t, x11)
title('�����źű任')
x22 = exp(-2 * (2 * t - 5));
figure, subplot(111), plot(t, x22)
title('ָ���źű任');