male(fahad).
male(mohammed).
male(ahmed).
female(rema).
female(maha).
female(lama).
female(sara).
parent(rema, mohammed).
parent(fahad, mohammed).
parent(maha, lama).
parent(maha, sara).
parent(maha, ahmed).
parent(mohammed, lama).
parent(mohammed, sara).
parent(mohammed, ahmed).
father(X, Y) :-
    male(X),
    parent(X, Y).
mother(X, Y) :-
    female(X),
    parent(X, Y).
brother(X, Y) :-
    male(X),
    parent(P, X),
    parent(P, Y),
    X \= Y.
sister(X, Y) :-
    female(X),
    parent(P, X),
    parent(P, Y),
    X \= Y.
