clear
clc
close all
b = [1 5 6];
a = [1 2];
sys = tf(a, b);
[y1, t1] = impulse(sys);
subplot(121),
plot(t1, y1)
[y2, t2] = step(sys);
subplot(122),
plot(t2, y2)
t = 0:0.01:10;

f = exp(t)
y3 = lsim(sys, f, t); %零状态响应
figure, subplot(121),
plot(t, y3)
y4 = dsolve('D2y+5*Dy+6*y=0', 'y(0)=1,Dy(0)=3'); %零输入响应
y44 = subs(y4, t); %转数值解
subplot(122), plot(t, y44)
