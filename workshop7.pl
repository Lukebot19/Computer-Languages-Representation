last([E], E).
last([_|T], R)
	:- last(T, R).

stars(0, []).
stars(N, [42|W])	
	:- N1 is N-1,
    stars( N1, W ).

blat([], []).
blat([E], [E]).
blat([E,F], [E,F]).
blat([H|T], [H|W])
	:- length(T,N), 
    N1 is N-1,
    stars(N1, U),
    last(T,V),
    append(U,[V], W).

censor(N, X)
	:- name(N, W),
    blat(W, W1),
    name(X, W1).
    
censorall([], []).
censorall([H|T], [V|W])
	:- censor(H, V),
    censorall(T,W).

rude(damn).
rude(blast).

censorsome([], []).
censorsome([H|T], [V|W])
	:- rude(H),
    censor(H,V),
    censorsome(T,W).
censorsome([H|T], [H|W])
	:- \+ rude(H),
    censorsome(T,W).


