% Exponential Fit
clc
close all
clear

format long
x = [1 2 3 4 5];
y = [3.71 27.27 201.73 1490.476 11013.24];
n = length(x);
Y = log(y);
xx = x.^2;
xY = x.*Y;
sum_x = sum(x);
sum_Y = sum(Y);
sum_xY = sum(xY);
sum_xx = sum(xx);

P = [sum_Y sum_xY]';
R = [n sum_x
    sum_x sum_xx];
Q = R\P;
a = exp(Q(1));
b = Q(2);

y_correct = a*exp(b*x);
f = @(z) a*exp(b*z);
plot(x,y,'or','linewidth',2);
grid minor;
hold on;
fplot(f,'-b','linewidth',2);
axis([0 6 0 12000]);
hold off;