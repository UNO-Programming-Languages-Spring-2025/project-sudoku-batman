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