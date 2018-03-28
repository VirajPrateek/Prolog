# Write a Prolog program to implement reverse (L, R) where List L is original and List R is reversed
# list.


# using accumulator
reverse(L, R) :- Areverse(L, [], R).
Areverse([H|T], A, R) :- Areverse(T, [H|R], R).
Areverse([], A, R). 