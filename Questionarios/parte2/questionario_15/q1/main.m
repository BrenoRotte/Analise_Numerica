clear
clc

y = [20.70;21;19.82;20.89;23.20;17.44;18.80;17.94;16.87;3.04;6.37;6.46;4.86;2.89;-4.12;-8.40;-9.14;-10.32;-14.03;-20.64];
x1 = [-9.91;-9.88;-9.03;-8.28;-7.93;-6.44;-5.94;-5.13;-3.94;-0.70;0.20;0.24;0.80;1.30;3.66;4.81;6.34;6.85;7.86;9.53];
x2 = [-9.98;-9.27;-8.66;-6.62;-4.76;-4.66;-2.99;-1.79;0.06;0.08;3.09;3.20;3.53;3.55;4.76;4.92;7.60;8.05;8.20;8.23];
x = [x1 x2];

n = length(x1);
v = 2
p = v+1
ii = 1


plot3(x1, y, x2, 'or');

[b, r2, s2, AICc, Info] = regressao_linear_dvs (n, v, p, ii, x, y)


xp1 = linspace(x1(1),x1(end),100);
xp2 = linspace(x2(1),x2(end),100);

y1 = b(1) + b(2)*xp1 + b(3)*xp2;

hold on
plot3(xp1, y1, xp2,'-b');