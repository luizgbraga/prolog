ultimo(X,[X]):-!.
ultimo(X,[_|C]):-ultimo(X,C).
