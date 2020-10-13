offspring(X,Y):-
    parent(Y,X).


parent(bluebird,charlie).
horse(bluebird).
horse(X):-
    offspring(X,Y),horse(Y).
    