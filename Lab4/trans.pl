
final(s3).

trans(s1, a, s1).
trans(s1, a, s2).
trans(s1, b, s1).
trans(s2, b, s3).
trans(s3, b, s4).

silent(s2, s4).
silent(s3, s1).

accepts(S, []):-
  final(S).

accepts(S, [H|T]):-
  trans(S, H, S1),
  accepts(S1, T).

accepts(S, X):-
  silent(S, S1),
  accepts(S1, X).
