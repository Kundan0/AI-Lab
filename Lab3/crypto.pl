
solution([]).
solution([S,E,N,D,M,O,R,Y]):-
C4 is 1,
M is 1,
member(C1,[0,1]),
member(C2,[0,1]),
member(C3,[0,1]),

member(E,[0,1,2,3,4,5,6,7,8,9]),
member(N,[0,1,2,3,4,5,6,7,8,9]),
member(D,[0,1,2,3,4,5,6,7,8,9]),
member(O,[0,1,2,3,4,5,6,7,8,9]),
member(R,[0,1,2,3,4,5,6,7,8,9]),
member(Y,[0,1,2,3,4,5,6,7,8,9]),
member(S,[0,1,2,3,4,5,6,7,8,9]),

S=\=E,
E=\=N,
N=\=D,
D=\=M,
M=\=O,
O=\=R,

  
S=\=N,
E=\=D,
N=\=M,
D=\=O,
M=\=R,
O=\=Y,
S=\=D,
E=\=M,
N=\=O,
D=\=R,
M=\=Y,
S=\=M, S=\=O, S=\=R, S=\=Y,
E=\=O, E=\=R, E=\=Y,
N=\=R, N=\=Y,
D=\=Y,R=\=Y,

D+E=:= Y+10*C1,
N+R+C1=:= E+10*C2,
E+O+C2=:= N+10*C3,
S+M+C3=:= O+10*C4.

member(X, [X|_]).
member(X, [_|Z]):-
member(X,Z).