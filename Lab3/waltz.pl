member("Fred").
member("Dave").
dad("DFred", "Fred").
not(do("DFred", "Waltz")).
not(do(X, Y)):-dad(Z, X),not(do(Z, Y)).

do("Dave", X):-not(do("Fred", X)).

cant(D, Z):-
D = "Jive",((not(do(X,"Jive"));do(X, "Waltz")),member(X),Z = X).
cant(D, Z):-
D = "Waltz",((not(do(X,"Waltz"));do(X, "Jive")),member(X), Z = X).