fact(0, 1).
fact(X, Y) :- X1 is X -1, 
			  fact(X1, Y), 
			  Y is X*Y.