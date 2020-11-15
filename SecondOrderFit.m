% Second order fit
clc
close all
clear

x = [1 2 3 4 5]
y = [6.2 10.7 17.9 27.5 37.95]
n = length(x)
x2 = x.^2
x3 = x.^3
x4 = x.^4
xy = x.*y
x2y = x2.*y
s_x = sum(x)
s_y = sum(y)
s_x2 = sum(x2)
s_x3 = sum(x3)
s_x4 = sum(x4)
s_xy = sum(xy)
s_x2y = sum(x2y)

P = [s_y s_xy s_x2y]'
R = [n s_x s_x2
    s_x s_x2 s_x3
    s_x2 s_x3 s_x4]
Q = R\P 

a = Q(1)
b = Q(2)
c = Q(3)

f = @(x) a + b*x + c*x.^2
plot(x,y,'or','linewidth',2);
grid minor;
hold on;
fplot(f,'-b','linewidth',1.5);
axis([0 6 0 50]);
hold off;