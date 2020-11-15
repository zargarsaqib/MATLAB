% polynomial curve fitting
clear
clc
x = 1:10; 
y = [0.7692 0.4545 0.3226 0.2500 0.2041 0.1724 0.1493 0.1316 0.1176 0.1064];
% After applying natural logarithm
Y = log(y);
X = log(x);

XY = X .* Y;
X2 = X.*X;

% Taking summation of the vectors
sum_Y = sum(Y);
sum_X = sum(X);
sum_XY = sum(XY);
sum_X2 = sum(X2);

P = [
    sum_Y
    sum_XY
    ];
Q = [
    10 sum_X
    sum_X sum_X2
    ];
S = inv(Q) * P      % solution vector of the logarithmic equations

% required coefficients of the original equation
a = exp(S(1));      
b = S(2);

% After curve fitting
z = a.*(x.^b);

% Plot
plot(x,y,'x',x,z,'-r','LineWidth',1.5);
grid on;
grid minor;

