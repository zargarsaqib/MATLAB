% Exponential Fit ax^b
clc
close all
clear

format long
x = [1 2 3 4 5];
y = [2.3 15.86 53.9 129 249.3];
n = length(x);
X = log(x);
Y = log(y);
XX = X.^2;
XY = X.*Y;
sum_X = sum(X);
sum_Y = sum(Y);
sum_XY = sum(XY);
sum_XX = sum(XX);

P = [sum_Y sum_XY]';
R = [n sum_X
    sum_X sum_XX];
Q = R\P;
a = exp(Q(1));
b = Q(2);


f = @(z) a*z.^b;
plot(x,y,'or','linewidth',2);
hold on;
fplot(f,'-b');
hold off;
axis([0 5 -1 260]);
grid minor;

