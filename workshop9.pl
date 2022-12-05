word(wit).
word(ass).
word(bad).
word(or).
word(pie).
word(and).
word(shoe).
word(cold).

oddsEvens([], [], []).
oddsEvens([A], [A], []).
oddsEvens([A,B|T], [A|V], [B|W])
	:- oddsEvens(T,V,W).

alternade(I)
	:- name(I, R),
    oddsEvens(R, X, Y),
    name(X1, X),
    name(Y1, Y),
    word(X1),
    word(Y1).

animal(aardvark).
animal(antelope).
animal(coyote).
animal(dingo).
animal(elephant).
animal(horse).
animal(jaguar).
animal(kangaroo).

vegetable(artichoke).
vegetable(vegetable).
vegetable(cabbage).
vegetable(carrot).
vegetable(celery).
vegetable(leek).
vegetable(lettuce).
vegetable(marrow).
vegetable(onion).
vegetable(potato).

mineral(anatase).
mineral(basalt).
mineral(cobolt).
mineral(copper).
mineral(galena).
mineral(nickel).
mineral(sodium).
mineral(silver).
mineral(zircon).

solution(R)
	:- animal( A ), 
    name( A,[X4, X5, X2, X5, X8, X9 ] ),
    vegetable( V ),
    name( V, [ X6, X5, X8, X7, X8, X5 ]),
    mineral( M),
    name( M, [X7, X3, X7, X8, X7, X1, X9 ]),
    name( R, [X1, X2, X3, X4, X5, X6, X7, X8, X9]).


main
	:- oddsEvens( [a,b,c,d,e], X, Y),
    write(X),
    write(Y).