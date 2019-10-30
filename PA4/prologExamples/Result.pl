adjacent(P,Q) :- P =:= Q+1.
adjacent(P,Q) :- P =:= Q-1.

bedroom([sleeps(_, 1), sleeps(_, 2), sleeps(_, 3), sleeps(_, 4), sleeps(_, 5)]).
hallway(X) :- bedroom(X),
                member(sleeps(hunter, A), X), A\=5,
                member(sleeps(laura, B), X), B\=1,
                member(sleeps(addiley, D), X),
                member(sleeps(arnie, C), X), C\=1, C\=5,
                        \+(adjacent(C,B)),
                        \+(adjacent(C,D)),
                member(sleeps(ramey, E), X), E @> B.
