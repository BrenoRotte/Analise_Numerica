## Copyright (C) 2023 Breno
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{Integral} =} tres_oitavos_de_simpson (@var{a}, @var{b}, @var{n}, @var{f})
## a -> limite inferiorto
## b -> limite superiorto
## n -> limite de subintervalos
## Saida:
## Integral -> Valor da integral
## @seealso{}
## @end deftypefn

## Author: Breno
## Created: 2024-01-18

function Integral = tres_oitavos_de_simpson (a, b, n, f)
  h = (b-a)/(3*n);
  x = a:h:b;
  soma = 0;
  y = f(x);
  for i = 1 : n
    soma = soma + y(3*i-2) + 3*y(3*i-1) + 3*y(3*i) + y(3*i+1);
  endfor
  Integral = (3*h/8)*soma;
endfunction
