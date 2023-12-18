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
## @deftypefn {} {@var{valor} =} interpola (@var{x}, @var{y}, @var{z})
##
## @seealso{}
## @end deftypefn

## Author: Breno
## Created: 2023-12-05

function valor = interpola (x, y, z)
  n = length(x);

  # Construir matriz do sistema
  A = ones(n, n);
  for i = 2:n
    A(:, i) = x.^(i-1);
  end

  for i = 1 : size(A, 1)
    for j = 1 : size(A, 1)
      if A(i,j) ~= A(j, i)
        Info1 = 1;
      endif
    endfor
  endfor
  [r, Det, Info2] = Cholesky (A);
  if Info2 || Info1
    # Decomposição LU
    r = sol_decomp_LU (A, y);
  endif

  valor = r(1);
  for i = 2:n
      valor = valor + r(i) * z^(i-1);
  end
endfunction
