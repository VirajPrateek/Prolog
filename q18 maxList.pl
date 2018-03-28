# Write a Prolog program to implement maxlist(L, M) so that M is the maximum number in the list.

maxlistist([], 0).
maxList(L, M) :- L =  [H|_], 
            	 accMax(L,H,M).
accMax([H|T],A,Max)  :- H  >  A, 
         				accMax(T,H,Max). 
accMax([H|T],A,Max)  :- H  =<  A, 
         				accMax(T,A,Max). 
accMax([],A,A).	