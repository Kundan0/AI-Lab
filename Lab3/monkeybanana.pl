in_room(symbol)

dexterous(symbol)
tall(symbol)
can_move(symbol,symbol,symbol)
can_reach(symbol,symbol)
get_on(symbol,symbol)
can_climb(symbol,symbol)
close(symbol,symbol)
under(symbol,symbol)

CLAUSES
in_room(bananas).
in_room(chair).
in_room(monkey).
dexterous(monkey).
tall(chair).
can_move(monkey,chair,bananas).
can_climb(monkey,chair).
can_reach(X,Y):-
    dexterous(X),close(X,Y).
close(X,Z):-get_on(X,Y),under(Y,Z),tall(Y).
get_on(X,Y):-can_climb(X,Y).
under(Y,Z):-in_room(X),in_room(Y),in_room(Z),can_move(X,Y,Z).
GOAL
can_reach(monkey,appple)