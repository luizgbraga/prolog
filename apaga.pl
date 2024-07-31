apaga(L,N,L1):-apaga_indexado(L,N,1,L1).
apaga_indexado([],_,_,[]).
apaga_indexado([X|R],N,I,L1):-N is I,apaga_indexado(R,N,1,L1).
apaga_indexado([X|R],N,I,[X|R1]):-I1 is I+1, apaga_indexado(R,N,I1,R1), !.
