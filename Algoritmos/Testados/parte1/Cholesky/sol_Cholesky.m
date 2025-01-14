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
## @deftypefn {} {@var{x} =} sol_Cholesky (@var{A}, @var{b})
##
## @seealso{}
## @end deftypefn

## Author: Breno
## Created: 2023-11-11

function x = sol_Cholesky (A, b)
  [R, Det, Info] = Cholesky (A);
  if Info ~= 0
    disp('nao e possivel resolver o sistema por Cholesky');
    return;
  endif
  for i = 1 : size(A, 1)
    for j = 1 : size(A, 1)
      if A(i,j) ~= A(j, i)
        disp('A matriz nao e simetrica');
        return;;
      endif
    endfor
  endfor

  L = tril(R);
  y = subst_sucess(L, b);
  x = subst_retro(L', y');
endfunction
