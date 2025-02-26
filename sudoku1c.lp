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

numbers(1..4).
gridSize(4).
rows(1..4).
columns(1..4).
n(2).
%Subgrid creation
subgrid(X,Y,G) :- rows(X), columns(Y), n(N), G = 1 + (((X-1) / N) * N + ((Y-1) / N)).
% Numbers appear once KEEPING in mind the initial state
1 { sudoku(X,Y,N) : numbers(N)} 1 :- rows(X), columns(Y), not initial(X,Y,_).
sudoku(X, Y, N) :- initial(X, Y, N).
% Constraints for rows and columns
:- rows(X), numbers(N), #count {Y : sudoku(X, Y, N) }!= 1.
:- columns(Y), numbers(N), #count {X : sudoku(X, Y, N)} != 1.
% Constraints for subgrids
:- subgrid(X,Y,G), numbers(N), #count {X1, Y1 : subgrid(X1,Y1,G),sudoku(X1,Y1,N)} != 1.

#show sudoku/3.
