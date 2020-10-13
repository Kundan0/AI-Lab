person("kundan",21).
person("kundan",13).
display(N,A):-
    write("the name is "),write(N),nl,write("the age is "),write(A),nl.
search:-
    write("name "),read(N),person(N,A),display(N,A).
