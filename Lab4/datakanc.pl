
:-dynamic person/4.
person("Shyam", "Sharma", d(12, "August", 1976), w("NTV", 18000)).
person("Shyam", "Sharma", d(16, "September", 1976), w("NTV", 18000)).
person("Ram", "Singh", d(13, "May", 2001), w("UTL", 12000)).

start:-
  write("******************MENU******************"), nl,
  write("Press 1 to add new data"), nl,
  write("Press 2 to show existing data"), nl,
  write("Press 3 to search"), nl,
  write("Press 4 to delete"), nl,
  write("Press 0 to exit"), nl,
  write("****************************************"), nl,
  read(X),
  evalAns(X).

evalAns(1):- loadName, start.
evalAns(2):- display, start.
evalAns(3):- search, start.
evalAns(4):- delete, start.
evalAns(0):- write("Thank You!").

displayRecord(N, C, d(D, M, Y), w(O, S)):-
  write("Name: "), write(N), write(" "), write(C), nl,
  write("Date of Birth: "), write(D), write("th "), write(M), write(" "), write(Y), nl,
  write("Organization: "), write(O), nl,
  write("Salary: "), write(S), nl, nl.

display:-
  retract(person(N, C, d(D, M, Y), w(O, S))), !,
  displayRecord(N, C, d(D, M, Y), w(O, S)),
  display,
  asserta(person(N, C, d(D, M, Y), w(O, S))).

display:- !.

delete:-
  write("*****************DELETE*****************"), nl,
  write("Enter the name: "), nl,
  read(N),
  write("Enter the surname: "), nl,
  read(C), nl,
  retract(person(N, C, d(D, M, Y), w(O, S))), !,
  write("Details of the deleted record:"), nl,
  displayRecord(N, C, d(D, M, Y), w(O, S)),
  write("****************************************"), nl, nl.

loadName:-
  write("*******************ADD******************"), nl,
  write("Enter the name: "), nl,
  read(N),
  write("Enter the surname: "), nl,
  read(C),
  write("Date of Birth:\nDay: "), nl,
  read(D),
  write("Month: "), nl,
  read(M),
  write("Year: "), nl,
  read(Y),
  write("Enter Organization: "), nl,
  read(O),
  write("Enter Salary: "), nl,
  read(S), nl,
  asserta(person(N, C, d(D, M, Y), w(O, S))),
  write("****************************************"), nl, nl.

search:-
  write("*****************SEARCH*****************"), nl,
  write("Enter the name: "), nl,
  read(N),
  write("Enter the surname: "), nl,
  read(C), nl,
  person(N, C, d(D, M, Y), w(O, S)), !,
  write("Details of the record:"), nl,
  displayRecord(N, C, d(D, M, Y), w(O, S)),
  write("****************************************"), nl, nl.
