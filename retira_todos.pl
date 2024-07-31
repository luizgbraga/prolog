retira(_,[],[]).
retira(X,[X|C],R):-retira(X,C,R).
retira(X,[Y|C1],[Y|C2]):-X\==Y,retira(X,C1,C2).
