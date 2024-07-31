pertence(X,[X|_]):-!.
pertence(X,[_|C]):-pertence(X,C).
