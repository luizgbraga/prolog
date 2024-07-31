nesimo(1,X,[X|_]).
nesimo(I,X,[_|C]):-nesimo(Ip,X,C), I is Ip+1.
