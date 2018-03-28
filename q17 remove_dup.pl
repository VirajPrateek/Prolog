# Write a program in PROLOG to implement remove_dup (L, R) where L denotes the list with some
# duplicates and the list R denotes the list with duplicates removed.

remove_dup([], []).
remove_dup([First | Rest], NewRest) :- 
									member(First, Rest),
									remove_dup(Rest, NewRest).

remove_dup([First | Rest], [First | NewRest]) :- 
									not(member(First, Rest)), 
									remove_dup(Rest, NewRest).