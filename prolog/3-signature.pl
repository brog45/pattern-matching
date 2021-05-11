fac(0, 1) :- !.
fac(1, 1) :- !.
fac(X, Y) :-
    N1 is X - 1,
    N2 is X - 2,
    fac(N1, Y1),
    fac(N2, Y2),
    Y is Y1 + Y2.

sorted([]).
sorted([_]) :- !.
sorted([A,B|Xs]) :- A < B, sorted([B|Xs]).
