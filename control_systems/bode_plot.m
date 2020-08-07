% Plot the Bode plot of the transfer function

num = [1];
den = [1 1 1];
sys = tf(num,den);
bode(sys)
