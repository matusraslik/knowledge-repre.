

% Peano Arithmetic
%
% 0 - 0
% 1 - n(0)
% 2 - n(n(0))
% 3 - n(n(n(0)))
 
% sum(?X, ?Y, ?Z)
% is is true if Z is X + Y using Peano 
% Arithmetic

sum(0, Y, Y).

% n   :-      n-1
sum(n(X), Y, n(Z)) :- sum(X, Y, Z).

% p2d(+P, -D)
% it is true if D unify with a 
% decimal number equivalent to the 
% Peano representation of P

p2d(0, 0).
p2d(n(P) , Number2):- p2d(P, Number),
 Number2 is Number + 1.
 
 
 
 % substr(?X, ?Y, ?Z)
 % it is true if Z is X - Y using 
 % peano arithmetic
 
 substr(X, 0, X).
 
 substr(X, n(Y) , Z):- substr(X, Y,n(Z)).