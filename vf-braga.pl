pertence(X,[X|_]).
pertence(X,[_|C]):-pertence(X,C).

retira(X,[X|C],C).
retira(X,[Y|C1],[Y|C2]):-retira(X,C1,C2).

comum([],_,[]).
comum([X|C1],L2,[X|R]):-pertence(X,L2),retira(X,L2,Aux),comum(C1,Aux,R),!.
comum([_|C1],L2,R):-comum(C1,L2,R).
