member(X,[X|_]).
member(X,[H|T]):-
    member(X,T).
    
solution([]).
solution([F,O,R,T,Y,E,N,S,I,X]):-
    member(F,[0,1,2,3,4,6,7,8,9]),
    member(O,[0,1,2,3,4,6,7,8,9]),
    member(R,[0,1,2,3,4,6,7,8,9]),
    member(T,[0,1,2,3,4,6,7,8,9]),
    member(Y,[0,1,2,3,4,6,7,8,9]),
    member(E,[0,1,2,3,4,6,7,8,9]),
    member(N,[0,1,2,3,4,6,7,8,9]),
    member(S,[0,1,2,3,4,6,7,8,9]),
    member(I,[0,1,2,3,4,6,7,8,9]),
    member(X,[0,1,2,3,4,6,7,8,9]),

    F=\=O,F=\=R,F=\=T,F=\=Y,F=\=E,F=\=N,F=\=S,F=\=I,F=\=X,
    O=\=R,O=\=T,O=\=Y,O=\=E,O=\=N,O=\=S,O=\=I,O=\=X,
    R=\=T,R=\=Y,R=\=E,R=\=N,R=\=S,R=\=I,R=\=X,
    T=\=Y,T=\=E,T=\=N,T=\=S,T=\=I,T=\=X,
    Y=\=E,Y=\=N,Y=\=S,Y=\=I,Y=\=X,
    E=\=N,E=\=S,E=\=I,E=\=X,
    N=\=S,N=\=I,N=\=X,
    S=\=I,S=\=X,
    I=\=X,

    (F-S)*10000+(O-I)*1000+(R+2*T-X)*100+(2*E)*10+(2*N)=0.
