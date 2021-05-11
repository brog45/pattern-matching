fac(X, Y) :-
    (   [X, Y] = [0, 1] -> true
    ;   [X, Y] = [1, 1] -> true
    ;   N1 is X - 1,
        N2 is X - 2,
        fac(N1, Y1),
        fac(N2, Y2),
        Y is Y1 + Y2
    ).

sorted(Xs) :-
    (   Xs = []  -> true
    ;   Xs = [_] -> true
    ;   Xs = [A,B|Ys],
        A < B,
        sorted([B|Ys])
    ).
