# Write a program in PROLOG to implement delete_all (X, L, R) where X denotes the element
# whose all occurrences has to be deleted from list L to obtain list R.
   
delete_all(X, [], []) :- !.
delete_all(X, [X|Xs], Y) :- !, delete_all(X, Xs, Y).
delete_all(X, [T|Xs], Y) :- !, delete_all(X, Xs, Y2), append([T], Y2, Y).