concat([],L,L).
concat([El|L1],L2,[El|L3]):-concat(L1,L2,L3).

remove_duplicates([],[]).
remove_duplicates([El|C],[El|C]):-remove_all(El,C,L),remove_duplicates(L,C).

remove_all(El,[El|C],L):-remove_all(El,C,L).
remove_all(El,[El1|C],[El1|C1]):-El \== El1, remove_all(El,C,C1).

concat_without_duplicates(L1,L2,L):-concat(L3,L1,L2), remove_duplicates(L3,L).
