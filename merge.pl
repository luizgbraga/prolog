merge([],L,L).
merge(L,[],L).
merge([X1|C1],[X2|C2],[X1|R]):-X1=<X2,merge(C1,[X2|C2],R),!.
merge(L1,[X2|C2],[X2|R]):-merge(L1,C2,R).
