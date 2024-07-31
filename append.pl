append([],L,L).
append([X|C1],L,[X|C2]):-append(C1,L,C2).
