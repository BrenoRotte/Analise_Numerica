## Copyright (C) 2023 Diego Sanches
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
## @deftypefn {} {@var{arr} =} oragniza ()
##
## @seealso{}
## @end deftypefn

## Author: Diego Sanches
## Created: 2023-06-05

function arr = oragniza ()
  n1 = input("Digite o primeiro numero: ");
  n2 = input("Digite o segundo numero: ");
  n3 = input("Digite o terceiro numero: ");
  if n1 == n2 || n1 == n3 || n2 == n3
    disp('Os numeros devem ser diferentes');
    return;
  endif
  disp('Numeros ordenados em ordem crescente');
  # Essa funcao organiza os numeros. Pesquisado no google.
  arr = sort([n1,n2,n3]);

  n4 = input("Digite o quarto numero numero: ");
  if n4 == n1 || n4 == n2 || n4 == n3
    disp('Os numeros devem ser diferentes');
    return;
  endif
  arr = [arr, n4];
  disp('Numeros ordenados em ordem descrescente');
  # comando help sort mostrou que da pra colocar decrescente
  arr = sort(arr, 'descend');
endfunction
