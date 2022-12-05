insert( E, [], [E] ).
insert( E, [H|T], [E, H|T] )
	:- E < H.
insert( E, [H|T], [H|W] )
	:- E >= H,
       insert( E,T,W ).

seqsort([], []).
seqsort([H|T], X)
	:- seqsort(T, R),
    insert(H, R, X).
    
partition(_, [], [], []).
partition(P, [H|T], [H|V], W)
	:- H < P,
       partition(P, T, V, W).
partition(P, [H|T], V, [H|W])
	:- H >= P,
       partition(P,T,V, W).

quicksort([], []).
quicksort([H|T], R)
	:- partition(H, T, V, W),
       quicksort(V, R1),
       quicksort(W, R2),
       append(R1,[H], A),
       append(A, R2, R).
       
       