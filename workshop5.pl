hello
	:- write('Hello World').

factorial( 0, 1).
factorial( N, F )
	:- N1 is N -1,
       factorial( N1, F1 ),
       F is N * F1.

sumlist( [], 0 ).
sumlist( [H|T], N )
	:- sumlist( T, W ), N is H + W.

maxlist( [E], E ).
maxlist( [H|T], H )
	:- maxlist( T,W ), H > W.
maxlist( [H|T], W )
	:- maxlist( T,W ), H =< W.

memberlist( E, [E|_] ).
memberlist( E, [_|T] )
	:- memberlist( E, T).

reverselist( [], [] ).
reverselist( [H|T], V )
	:- reverselist( T, W ),
       append( W, [H], V ).

insertlist( E, [], [E] ).
insertlist( E, [H|T], [E, H|T] )
	:- E < H.
insertlist( E, [H|T], [H|W] )
	:- E >= H,
       insertlist( E,T,W ).

sortlist( [], [] ).
sortlist( [H|T], X )
	:- sortlist( T, W), 
       insertlist( H,W,X).

main :- sortlist( [4,2,11,7,3,5], Y ),
    	write( Y ). 

%main :- insertlist( 5, [1,3,6,7,8], Y), write( Y ). 

%main :- reverselist( [3,5,6,7,8], Y ), write(Y).

%main
%	:- memberlist( 5, [3,4,5,6,7,8] ).

%main
	%:- maxlist( [3,5,1,4,6,9], X ),
    	%write( X ).

%main :- sumlist( [3,6,2,4,6], X ), 
   % write( X ).