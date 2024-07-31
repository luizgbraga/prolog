inv(X,Y):-inv(X,[],Y).
inv([],Y,Y).
inv([X|Z],L,Y):-inv(Z,[X|L],Y).
