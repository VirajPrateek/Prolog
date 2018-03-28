% Write a Prolog program to implement two predicates evenlength(List) and oddlength(List) so
% that they are true if their argument is a list of even or odd length respectively

oddlength(L) :- listlen(L, N),
				N mod 2 =\= 0.
				
evenlength(L) :- listlen(L, N),
				N mod 2 =:= 0.

listlen(L, N) :- lenacc(L, 0, N).
lenacc([], A, A).
lenacc([H|T], A, N) :- A1 is A+1, lenacc(T, A1, N).