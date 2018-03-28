% Write a program in PROLOG to implement merge (L1, L2, L3) where L1 is first ordered list and L2
% is second ordered list and L3 represents the merged list.
#using inbuilt sort.

merge(L1, L2, L3) :- sort(L1, L2, L3).

sort([],L,L).
sort(L,[],L).
sort([Head1|Tail1], [Head2|Tail2], L) :- 
   							 Head1 < Head2 -> L = [Head1|R], sort(Tail1,[Head2|Tail2],R) ;
   							 Head1 > Head2 -> L = [Head2|R], sort([Head1|Tail1],Tail2,R) ;
   							 L = [Head1,Head2|R], sort(Tail1,Tail2,R).