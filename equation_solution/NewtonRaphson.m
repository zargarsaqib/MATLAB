clear
close all
clc
format long
syms x f 
f(x) =  x^2-2;
df(x) = diff(f,x);
guess = 1;
x_val = [];
n = [];
x_val(1) = guess;
i = 1;
err = 1;
while abs(err) >= 0.000001  
    i = i+1;
    n(i) = i;
    err  = f(x_val(i-1));
    x_val(i) = x_val(i-1) - subs(f,x,x_val(i-1))/subs(df,x,x_val(i-1));
    if i>200
        disp("The solution was not found")
        break
    end
end

plot(n,x_val,'linewidth',2);
grid minor;