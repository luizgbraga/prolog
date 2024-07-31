nesimo(1,X,[X|_]).
nesimo(I,X,[_|C]):-nesimo(Ip,X,C),I is Ip+1.

positions([],_,[]).
positions([I|P],L,[X|R]):-nesimo(I,X,L),positions(P,L,R).
