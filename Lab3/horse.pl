offspring(X,Y):-
    parent(Y,X).


parent(bluebird,charlie).
parent(kundan,hisson).
horse(X):-
    offspring(X,Y),horse(Y).
    