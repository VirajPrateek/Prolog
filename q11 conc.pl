# Write a Prolog program to implement conc (L1, L2, L3) where L2 is the list to be appended with
# L1 to get the resulted list L3.

   conc([], L, L).
   conc(L, [], L).  
   conc([H|T], L2, [H|L3]) :- conc(T, L2, L3).
  
  %Try uncommenting this, if it doesnt work.
  %However this is redundant.
  
  % conc(X, Y, L3) :- conc(X, [Y], L3).
