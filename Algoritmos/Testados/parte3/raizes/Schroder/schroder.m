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
## @deftypefn {} {@var{retval} =} schroder (@var{input1}, @var{input2})
## Objetivo: Calcular raiz multipla de equacao pelo metodo de Schroder
## Entradas:
##      multiplicidade, valor inicial, tolerancia e numero maximo de iteracoes
## Saidas:
##      raiz, numero gasto de iteracoes e informacao sobre convergencia, sendo
##      Info = 0 : raiz convergiu com sucesso
##      Info = 1 : raiz nao convergiu com parametros dados
## @seealso{}
## @end deftypefn

## Author: Breno
## Created: 2024-01-18

function [Raiz, Iter, Info] = schroder (m, x, Toler, IterMax, f, f_der)
  Epsilon = precisao_maquina();
  deltax = 1 + Toler;
  Iter = 0;
  while 1
    Fx = f(x);
    DFx = f_der(x); # avaliar a funcao e sua derivada em x
    if ((abs(deltax) <= Toler && abs(Fx) <= Toler) || abs(DFx) < Epsilon || Iter > IterMax)
      break;
    endif
    deltax = m*Fx/DFx;
    x = x - deltax;
    Iter = Iter + 1;
  endwhile
  Raiz = x;
  # teste de convergencia
  if (abs(deltax) <= Toler && abs(Fx) <= Toler)
    Info = 0;
  else
    Info = 1;
  endif
endfunction
