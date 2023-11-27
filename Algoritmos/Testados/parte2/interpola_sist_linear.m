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
## @deftypefn {} {@var{P} =} interpola_sist_linear (@var{x}, @var{xi}, @var{yi})
##
## @seealso{}
## @end deftypefn

## Author: Breno
## Created: 2023-11-20

function P = interpola_sist_linear (x, x0, y0, x1, y1)
  P = y0 + ((y1-y0)/(x1-x0))*(x - x0);
endfunction
