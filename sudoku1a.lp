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

% Ininitially filled numbers
solution(X,Y,N) :- initial(X,Y,N).

% Cell uniqueness
:- rows(X), columns(Y), not solution(X,Y,_).
:- solution(X,Y,W), solution(X,Y,V), W != V.
% Row bitwise distinctness
:- solution(R1,C1,N), solution(R2,C2,N), R1 != R2, C1 = C2.
% Column bitwise distinctness
:- solution(R1,C1,N), solution(R2,C2,N), C1 != C2, R1 = R2.

% Subgrid Block
subgrid(X,Y,U) :- rows(X), columns(Y), U = 1 + (((X-1)/2)*2+(Y-1)/2).

:- subgrid(X1, Y1, U), subgrid(X2, Y2, U), numbers(N),solution(X1, Y1, N), solution(X2, Y2, N), X1 != X2, Y1 != Y2.
%


sudoku(X,Y,N) :- solution(X,Y,N).

<<<<<<< Updated upstream
=======
% Numbers appear once KEEPING in mind the initial state
1 { sudoku(X,Y,N) : numbers(N)} 1 :- rows(X), columns(Y), not initial(X,Y,_).
sudoku(X, Y, N) :- initial(X, Y, N).
% Constraints for rows and columns
:- rows(X), numbers(N), #count { Y : sudoku(X, Y, N) } != 1.
:- columns(Y), numbers(N), #count { X : sudoku(X, Y, N) } != 1.
>>>>>>> Stashed changes

#show sudoku/3.
