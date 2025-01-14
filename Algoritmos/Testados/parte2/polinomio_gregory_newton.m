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
## @deftypefn {} {@var{Pz} =} polinomio_newton (@var{m}, @var{x}, @var{y}, @var{z})
## m = numero de pontos
## @seealso{}
## @end deftypefn

## Author: Breno
## Created: 2023-11-20

function Pz = polinomio_gregory_newton (m, x, y, z)
  for i = 1 : m
    Dely(i) = y(i);
  endfor
  for i = 1 : m-1
    for k = m : -1 : i+1
      Dely(k) = Dely(k) - Dely(k-1);
    endfor
  endfor
  u = (z - x(1))/(x(2) - x(1));
  Pz = Dely(m);
  for i = m-1 : -1 : 1
    Pz = Pz * (u-i + 1)/i + Dely(i);
  endfor
endfunction
