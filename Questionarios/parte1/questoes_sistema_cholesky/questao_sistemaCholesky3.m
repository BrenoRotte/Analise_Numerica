clear
clc

A = [44.88 -17.65 18.23; -17.65 43.80 -16.15; 18.23 -16.15 44.38];
b = [-10.60;-15.46;3.04];

x = sol_Cholesky(A, b)

disp('3*x1 + 5*x2 + 4*x3');
res = 3*(x(1)) + 5*x(2) + 4*x(3)
