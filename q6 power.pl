power(X, 0, 1):-!.
power(X, 1, X):-!.
power(X, Y, Z) :-
	 Y1 is Y-1,
	 power(X, Y1, Z1),
	        Z is Z1*X.