% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...
% Rows must be unique
% Columns must be unique
% Numbers available are 1...4
% Subgrid blocks must be unique
solution(X,Y,N) :- initial(X,Y,N).
n(2).
numbers(1..4).
gridSize(NN) :- n(N), NN = N * N.
row(1..NN) :- gridSize(NN).
column(1..NN) :- gridSize(NN).
sudoku(X,Y,N) :- solution(X,Y,N).




#show sudoku/3.
