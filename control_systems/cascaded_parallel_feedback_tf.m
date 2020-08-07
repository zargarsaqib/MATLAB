% cascaded, parallel and feedback transfer functions

num1 = [10];
den1 = [1 2 10];

num2 = [5];
den2 = [1 5];

%print transfer function of the series configuration
[num,den] = series(num1, den1, num2, den2);
printsys(num, den)

%print transfer function of the parallel configuration
[num,den] = parallel(num1, den1, num2, den2);
printsys(num, den)

%print transfer function of the feedback configuration
[num,den] = feedback(num1, den1, num2, den2);
printsys(num, den)

