% simpson's rule
clc
close all
clear
format long

% function
f = @(x) 0.2 + 25.*x - 200*x.^2 + 675*x.^3 - 900*x.^4 + 400*x.^5;

% limits of integration
a = 0;
b = 0.8;

% No. of divisions (even)
n = 10000;

h = (b-a)/n;
xx = a:h:b;
y = f(xx);

% solution
sol_numerical = (h/3)*(y(1)+4*sum(y(2:2:n))+2*sum(y(3:2:n-1))+y(n+1))
sol_analytical = integral(f,a,b)

