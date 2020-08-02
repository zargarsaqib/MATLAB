%%%%%%%%%%%%%%%%%%%%%%%%
% Program: Bode Plot
% Author : L0gic41
% Date   : 02/08/2020
%%%%%%%%%%%%%%%%%%%%%%%%

num = [1];
den = [1 1 1];
sys = tf(num,den);
bode(sys)
