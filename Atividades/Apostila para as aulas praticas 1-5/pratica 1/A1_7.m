clear
xaux = [0.7 : 0.1 : 1.1];

y = 2/3 + x/3 -(1/9)*(x-1)^2 +(5/81)*(x-1)^3;
y = y -(10/243)*(x-1)^4 + (22/729)*(x-1)^5;


for i = 1 : 5

  x = xaux(i);
  y = 2/3 + x/3 -(1/9)*(x-1)^2 +(5/81)*(x-1)^3;
  y = y -(10/243)*(x-1)^4 + (22/729)*(x-1)^5

  y2 = x^(1/3)

  Erro = y2-y

  disp('-');

endfor


x = 10.3;
y = 2/3 + x/3 -(1/9)*(x-1)^2 +(5/81)*(x-1)^3;
y = y -(10/243)*(x-1)^4 + (22/729)*(x-1)^5

y2 = x^(1/3)

Erro = y2-y

disp('-');

x = 10.8;
y = 2/3 + x/3 -(1/9)*(x-1)^2 +(5/81)*(x-1)^3;
y = y -(10/243)*(x-1)^4 + (22/729)*(x-1)^5

y2 = x^(1/3)

Erro = y2-y

disp('-');


x = 11.3;
y = 2/3 + x/3 -(1/9)*(x-1)^2 +(5/81)*(x-1)^3;
y = y -(10/243)*(x-1)^4 + (22/729)*(x-1)^5

y2 = x^(1/3)

Erro = y2-y

disp('-');
