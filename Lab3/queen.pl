solution([]).
solution([c(X,Y)|Others]):-
    solution(Others),
    member(Y,[1,2,3,4,5,6,7,8]),
    noattack(c(X,Y),Others).
noattack(_,[]).
noattack(c(X,Y),[c(X1,Y1)|Others]):-
    Y=\=Y1,
    Y1-Y=\=X1-X,
    Y1-Y=\=X-X1,
    noattack(c(X,Y),Others).
member(X,[X|_]).
member(X,[_|Z]):-
    member(X,Z).