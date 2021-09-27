mem(H,[H|_]).
mem(H,[_|T]):-mem(H,T).

insert(X,L,[X|L]).

insertp(X, [Y | Rest], [X,Y | Rest]) :- X @< Y, !.
insertp(X,[H|T],[H|T1]):-insert(X,T,T1).

concat(L,L,[]).
concat([X|L1], L2, [X|L3]):-concat(L1,L2,L3) 	.

lastel([X|T],X,T).
lastel([_|T],X,B):-lastel(T,X,B).

len([],0).
len([_|T],L):-len(T,X),L is X+1.

rev([],[]).
rev([H|T],X):-rev(T,L),concat(X,[H],L).

insl(X,[],[X]).
insl(X,[H|T],[H|L]):-insl(X,T,L).

permut([],[]).
permut(L,[E|Perm]):-select(E,L,R),permut(R,Perm).

sorted([]).
sorted([_]).
sorted([H1,H2|T]):-H1=<H2,sorted([H2|T]).

selec(E,[E|T],T).
selec(E,[H|T],[H|R]):-selec(E,T,R). 	

permut_2([],[]).
permut_2(L,[E|X]):-selec(E,L,R),permut_2(R,X).

rem_dup([],[]).
rem_dup([H|T],X):-mem(H,T),!,rem_dup(T,X).
rem_dup([H|T],[H|X]):-rem_dup(T,X).





