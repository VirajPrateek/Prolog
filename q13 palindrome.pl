# Write a program in PROLOG to implement palindrome (L) which checks whether a list L is a
# palindrome or not.

palindrome([]).
palindrome([_]).
palindrome(Pal) :- append([H|T], [H], Pal),
   				   palindrome(T).