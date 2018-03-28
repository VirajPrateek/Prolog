% Write a prolog program to implement insert_nth(I, N, L, R) that inserts an item I into Nth
% position of list L to generate a list R.

% insert_nth(Val,List,Pos,Res)

insert_nth(Val,[H|List],Pos,[H|Res]):- Pos > 1, !, 
                               		   Pos1 is Pos - 1, insert_nth(Val,List,Pos1,Res). 
insert_nth(Val, List, 1, [Val|List]).