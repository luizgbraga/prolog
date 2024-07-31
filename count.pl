count(0,[]).
count(S,[_|C]):-count(Sp,C), S is Sp+1.
