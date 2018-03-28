# Write a Prolog program to implement sumlist(L, S) so that S is the sum of a given list L.

sumlist([L], L).
sumlist([L1, L2 | T], S) :- A is L1+L2,  sumlist([A | T], S). 