pertence(X,[X|_]).
pertence(X,[_|C]):-pertence(X,C).

retira_todos(_,[],[]).
retira_todos(X,[X|C1],C2):-retira_todos(X,C1,C2).
retira_todos(X,[Y|C1],[Y|C2]):-X\==Y,retira_todos(X,C1,C2).

retira_repetidos([],[]).
retira_repetidos([X|C1],[X|C2]):-retira_todos(X,C1,R),retira_repetidos(R,C2).

divide(K,L,L1,L2):-retira_repetidos(L,R),divide2(K,R,L1,L2),!.
divide2(_,[],[],[]).
divide2(K,[X|C1],L1,[X|L2]):-X>K,!,divide2(K,C1,L1,L2).
divide2(K,[X|C1],[X|L1],L2):-divide2(K,C1,L1,L2).
