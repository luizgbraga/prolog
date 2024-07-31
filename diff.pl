pertence(X,[X|_]).
pertence(X,[_|C]):-pertence(X,C).

diff([],_,[]).
diff([X|C1],L2,R):-pertence(X,L2),!,diff(C1,L2,R).
diff([X|C1],L2,[X|C2]):-pertence(C1,L2,C2).

diffp([],_,[]).
diffp([H|T],L2,L):-membro(H,L2),!,diffp(T,L2,L).
diffp([H|T],L2,[H|L]):-diffp(T,L2,L).
