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
## @deftypefn {} {@var{G} =} matrizG (@var{x})
##
## @seealso{}
## @end deftypefn

## Author: Breno
## Created: 2023-12-05

function G = matrizG (x)
  m = length(x);
  G = zeros(m, m);
  for i = 1:m
    for j = 1:m
      G(i, j) = x(i) - x(j);
    endfor
  endfor
endfunction


