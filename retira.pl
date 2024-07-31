retira(X,[X|C],C).
retira(X,[Y|C],[Y|Cp]):-retira(X,C,Cp).
