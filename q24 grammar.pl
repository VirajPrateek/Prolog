Write a PROLOG program that will take grammar rules in the following format:
NT „_(NT | T)*
Where NT is any nonterminal, T is any terminal and Kleene star (*) signifies any number of
repetitions, and generate the corresponding top-down parser, that is:
sentence „_ noun-phrase, verb-phrase
determiner „_ [the]
will generate the following:
sentence (I, O) :- noun-phrase(I,R), verb-phrase (R,O).
determiner ([the|X], X) :- !.