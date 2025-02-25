% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...

% We need number N to be unique in each row, column, and a block.
% Each sell has to be full.



% define the following:
% - valid numbers from 1 tp 4
% - there are a total of 4 rows and 4 columns for a 4x4 sudoku.
number(1..4).
column(1..4).
row(1..4).

% defines the size of the subgrid
% that way in a 4x4 grid, there are a total of 4 subgrids that are 2x2.
n(2).

% using formula 1+(((x-1)/n)*n+(y-1)/n) from hints for subgrid
subgrid(I,J, 1 + (((I-1) / n) * n + ((J-1) / n))) :- row(I), column(J), n(N).

% set 1 to be the most and least number to be assigned. that way each I,J would have only one number N
1 {cell(I,J, N) : number(N) } 1 :- row(I), column(J).


% TODO: make numbers unique in each row
% TODO: make numbers unique in each column
% TODO: make numbers unique in each subgrid








% solution is not possible if uniqueColumn, uniqueRow, and uniqueBlock are not true.
% :- solution(X,Y,N), not uniqueColumn(X,Y,N), not uniqueRow(X,Y,N), not uniqueBlock(X,Y,N).



% #show sudoku/3.

