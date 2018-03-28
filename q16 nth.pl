# Write a Prolog program to implement nth_element (N, L, X) where N is the desired position, L is
# a list and X represents the Nth element of L.

nth_element(1, [H|T], H).
nth_element(N, [H|T], X) :-  NewN is N-1, nth_element(NewN, T, X).
