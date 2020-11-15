clc
close all
clear

% function
f = @(z) z.^2;

% Limits of Integration
x_low = 0
x_up = 1

% no. of divisions
n  = 10

% division
h  = (x_up-x_low)/n
x = x_low:h:x_up
y = f(x)

% numerical solution
sol_numerical = 0.5*h*(y(1)+y(end)+2*sum(y(2:end-1)))

% Analytical Solution
sol_analytical = integral(f,x_low,x_up)
