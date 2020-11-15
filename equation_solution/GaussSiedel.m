clc
close all
clear
A = [1 1 1
    2 1 3
    3 4 -2];
B = [4 7 9]';
AB = [A B];

% Rearrange to get diagonally dominant matrix
AS = [AB(2,:)
    AB(3,:)
    AB(1,:)];
n = 3;
x = zeros(n,1);
err = zeros(n,1);
for iter = 1:100
    for k = 1:n
        num = AS(k,end) - AS(k,1:k-1)*x(1:k-1) - AS(k,k+1:n)*x(k+1:n);
        x(k) = num/AS(k,k);
    end
end
disp(x);