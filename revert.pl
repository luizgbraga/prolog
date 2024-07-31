reverter(L1,L):-rev(L1,[],L).
rev([],L1,L1).
rev([E|C],L,L1):-rev(C,[E|L],L1).
