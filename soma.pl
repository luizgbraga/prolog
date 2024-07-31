soma([],0).
soma([X|C],S):-soma(C,Sp),S is Sp+X.
