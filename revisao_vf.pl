pertence(X,[X|_]).
pertence(X,[_|C]):-pertence(X,C).

ultimo(X,[X]).
ultimo(X,[_|C]):-ultimo(X,C).

consecutivos(X,Y,[X,Y|_]).
consecutivos(X,Y,[_|C]):-consecutivos(X,Y,C).

enesimo(1,[X|_],X).
enesimo(I,[_|C],X):-enesimo(Ip,C,X), I is Ip+1.

pegue([],_,[]).
pegue([P|Cp],L,[X|R]):-enesimo(P,L,X),pegar(Cp,L,R).

retira(X,[X|C],C).
retira(X,[Y|C1],[Y|C2]):-retira(X,C1,C2).

retira_todos(_,[],[]).
retira_todos(X,[X|C],L):-retira_todos(X,C,L).
retira_todos(X,[Y|C1],[Y|C2]):-X\==Y,retira_todos(X,C1,C2).

retira_repetidos([],[]).
retira_repetidos([X|C1],[X|C2]):-retira_todos(X,C1,R),retira_repetidos(R,C2).

concatena([],L,L).
concatena([X|C1],L,[X|C2]):-concatena(C1,L,C2).

inverte(L,R):-inv(L,R,[]).
inv([],L,L).
inv([X|C],R,Aux):-inv(C,R,[X|Aux]).

max([X],X).
max([X,Y|C],M):-X>=Y,!,max([X|C],M).
max([X,Y|C],M):-Y>X,!,max([Y|C],M).

flat([],[]).
flat([X|C],R):-flat(X,Aux1),flat(C,Aux2),concatena(Aux1,Aux2,R).
flat([X],X).

une(L1,L2,R):-concatena(L1,L2,Aux),retira_repetidos(Aux,R).

inter([],_,[]).
inter([X|C1],L2,[X|R]):-pertence(X,L2),!,inter(C1,L2,R).
inter([_|C1],L2,R):-inter(C1,L2,R).

diff([],_,[]).
diff([X|C1],L2,R):-pertence(X,L2),!,diff(C1,L2,R).
diff([X|C1],L2,[X|R]):-diff(C1,L2,R).

diff_simetrica(L1,L2,R):-diff(L1,L2,Aux1),diff(L2,L1,Aux2),une(Aux1,Aux2,R).
