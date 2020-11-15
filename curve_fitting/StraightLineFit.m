clc
clear

% Dataset
x = [30 40 50];
y = [40 52 64];

n = length(x);
xx = x.^2;
xy = x.*y;
sum_x  = sum(x);
sum_y = sum(y);
sum_xx = sum(xx);
sum_xy = sum(xy);

% Matrix form of Linear Regression equations
P = [sum_y sum_xy]';
R = [sum_x n
    sum_xx sum_x];

% Coefficient vector
Q = R\P;
a = Q(1);
b = Q(2);


y_correct = a*x + b;
plot(x,y,'o:r',x,y_correct,'o:b','linewidth',2);
grid minor;

x = x';
y = y';
y_correct = y_correct';

table(x,y,y_correct)