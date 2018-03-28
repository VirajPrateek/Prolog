% Write a Prolog program to implement delete_nth (N, L, R) that removes the element on Nth
% position from a list L to generate a list R.

delete_nth(1, [_|T], T).
delete_nth(X,[H|T],[H|S]) :- X1 is X-1, delete_nth(X1,T,S).