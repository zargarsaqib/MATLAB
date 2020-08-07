% Plot a function

syms x y
y = x^2
fplot(y)
xlim([0,10])
ylim([0,100])
grid on
