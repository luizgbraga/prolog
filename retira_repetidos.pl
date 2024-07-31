retira_todos(_,[],[]).
retira_todos(X,[X|C],R):-retira_todos(X,C,R).
retira_todos(X,[Y|C1],[Y|C2]):-X\==Y,retira_todos(X,C1,C2).

retira_repetidos([],[]).
retira_repetidos([X|C],[X|C1]):-retira_todos(X,C,L),retira_repetidos(L,C1).
