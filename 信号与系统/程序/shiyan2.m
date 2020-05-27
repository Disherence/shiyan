clear
clc
close all
t = -1:0.001:1;
w0 = 2 * pi;
y = square(2 * pi * t, 50);
%���ڷ����ź�
plot(t, y), grid on;
axis([-1 1 -1.5 1.5]);
n_max = [1 3 5 7 99];
N = length(n_max);
x = zeros(1, length(t));

for k = 1:N
    for n = 1:2:n_max(k);
        b = 4 ./ (pi * n);
        x = x + b * sin(w0 * n * t); end
        figure;
        plot(t, y);
        hold on;
        plot(t, x);
        hold off;
        axis([-1 1 -1.5 1.5]), grid on;
        title(['���г����=', num2str(n_max(k))]);
        x = zeros(1, length(t)); end