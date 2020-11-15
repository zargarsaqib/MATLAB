clc 
clear
format long

% f(x) = 0
f = @(x) x.*exp(x)-1;

% Chosen starting points such that f(x_lower) = -ve and f(x_upper) = +ve
x_lower = 0;
x_upper = 1;
eps = 1e-5;
% Bisection method
x_mid = (x_lower + x_upper)/2;

xl(1) = x_lower;
xu(1) = x_upper;
xm(1) = x_mid;

i = 1;
n(1) = i;
while abs(f(x_mid))  > eps
    i = i+1;
    % replace the limits with the new values
    if f(x_mid) < 0
        x_lower = x_mid;
        
    elseif f(x_mid) > 0
        x_upper = x_mid;
        
    end 
    x_mid = (x_lower + x_upper)/2;
    
    xl(i) = x_lower;
    xu(i) = x_upper;
    xm(i) = x_mid;
    n(i) = i;
end

subplot(2,1,1);
plot(n,xl,'-b',n,xu,'-r',n,xm,'-k','linewidth',1.5);
title('Variation of limits while approaching solution');
xlabel('Iteration');
ylabel('Value');
legend('Lower Limit','Upper Limit','Midpoint');
grid minor
subplot(2,1,2);
plot(n,f(xm),'-g','linewidth', 1.5);
title('Variation of function');
xlabel('Iteration');
ylabel('Value');
grid minor;
% print the solution and the iterations
xl = xl';
xu = xu';
xm = xm';
n = n';
table(n,xl,xu,xm)


