clear
clc
close all
b = [1 3 2]; %微分方程左端
a = [1 2 0]; %微分方程右端
sys = tf(a, b);
pzmap(sys)
axis([-5 5 -2 2])
syms s t
sys = (2 * s + s^2) / (s^2 + 3 * s + 2);
imp = ilaplace(sys, t);
figure, ezplot(imp, [0, 5]);
syms t x X H Y y s
x = exp(-t) * heaviside(t);
X = laplace(x);
H = (2 * s + s^2) / (s^2 + 3 * s + 2);
Y = H * X;
y = ilaplace(Y);
t = 0:0.01:5;
yy = subs(y, t);
figure, plot(t, yy)