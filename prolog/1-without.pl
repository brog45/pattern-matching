fac(X, Y) :-
    (   X == 0 -> Y = 1
    ;   X == 1 -> Y = 1
    ;   N1 is X - 1,
        N2 is X - 2,
        fac(N1, Y1),
        fac(N2, Y2),
        Y is Y1 + Y2
    ).

sorted(Xs) :-
    length(Xs, Len),
    (   Len < 2 -> true
    ;   append([A,B], Ys, Xs),
        A < B,
        sorted([B|Ys])        
    ).
