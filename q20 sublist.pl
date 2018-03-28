% Write a Program in PROLOG to implement sublist(S, L) that checks whether the list S is the
% sublist of list L or not. (Check for sequence or the part in the same order).
#ThanksToStackoverflow

sublist( [], _ ).
sublist( [X|XS], [X|XSS] ) :- sublist( XS, XSS ).
sublist( [X|XS], [_|XSS] ) :- sublist( [X|XS], XSS ).