criminal(X):-
    is_american(X),sold_weapon(X,Y),hostile(Y).
hostile(X):-
    is_enemy(X).

is_american(george).
is_enemy(iraq).


sold_weapon(X,Y):-
    sold(X,Y,W),weapon(W).
sold(george,iraq,missiles).
weapon(missiles).
