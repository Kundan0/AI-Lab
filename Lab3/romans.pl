roman(X):-
    pompeins(X).

hate(X):-
    not(loyal(X)),roman(X).
loyal(X):-
    not(trystoassasinate(X)).
pompeins(marcus).
trystoassasinate(marcus).
