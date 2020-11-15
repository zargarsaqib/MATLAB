clc
close all
clear
A = [1 1 1
    2 1 3
    3 4 -2];

B = [4 7 9]';
n = 3;

% Get augmented matrix
AB = [A B];

clc
% With A(1,1) as pivot element
for i = 1:n-1
    for j = i:n-1
        alpha = AB(j+1,i)/AB(i,i);
        AB(j+1,:) = AB(j+1,:) - alpha*AB(i,:);
    end
end

% back substitution
x = zeros(3,1);
for i = n:-1:1
    x(i) = (AB(i,end) - AB(i,i+1:n)*x(i+1:n))/AB(i,i);
end
disp(x)