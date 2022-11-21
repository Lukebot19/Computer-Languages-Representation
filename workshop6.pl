% Activity 1
lengthlist([], 0).
lengthlist([_|T], X)
	:- lengthlist(T, X1),
    	X is X1 + 1.

% Activity 2
takelist(_, [], []).
takelist(0, _, []).
takelist(N, [H|T], [H|W])
	:- N1 is N - 1,
       takelist(N1, T, W).

% Activity 3
droplist(_, [], []).
droplist(0, L, L).
droplist(N, [_|T], W)
	:- N1 is N - 1,
       droplist(N1, T, W).

% Activity 4
splitlist( _, [], [], []).
splitlist( 0, X, [], X).
splitlist( N, [H|T], [H|V], W)
	:- N1 is N - 1,
       splitlist(N1, T, V, W).

% Activity 5
squares( [], []).
squares( [H|T], [V|W])
	:- V is H * H,
       squares( T,W ).

% Activity 6
evens( [], [] ).
evens( [H|T], W )
	:- 1 is H mod 2,
       evens( T, W ).
evens( [H|T], [H|W] )
	:- 0 is H mod 2,
       evens( T, W ).

% Activity 7
triangles(  )

