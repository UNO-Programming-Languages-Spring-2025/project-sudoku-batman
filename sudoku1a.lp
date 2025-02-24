% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...

% We need number N to be unique in each row, column, and a block.
% Each sell has to be full.

numbers(1..4).
subgrid(1..4).
cell(1..4,1..4).
uniqueColumn(X,Y,N) :- 

% solution is not possible if uniqueColumn, uniqueRow, and uniqueBlock are not true.
:- solution(X,Y,N), not uniqueColumn(X,Y,N), not uniqueRow(X,Y,N), not uniqueBlock(X,Y,N).



#show sudoku/3.

