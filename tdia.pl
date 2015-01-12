%tete(T,L) : test la tête 
tete(T,[T|_]).

%structure maison(N,C,B,A,Cig).

%liste5(ListeMaisons) : contient 5 éléments
liste5([_,_,_,_,_]).

%milieu(M,ListeMaisons) : la maison est au milieu de la ListeMaisons
milieu(M,[_,_,M,_,_]).

%droite(M1,M2,ListeMaisons) : la maison M1 est immédiatement à droite de M2 dans la ListeMaisons
droite(M1,M2,ListeMaisons) :- append(_,[M2,M1|_],ListeMaisons).

%gauche(M1,M2,ListeMaisons) : la maison M1 est immédiatement à gauche de M2 dans la ListeMaisons
gauche(M1,M2,ListeMaisons) :- append(_,[M1,M2|_],ListeMaisons).

assertion_1(ListeMaisons) :- 
	member(M,ListeMaisons),
	M=maison('Englishman','Red',_,_,_).
	
assertion_2(ListeMaisons) :- 
	member(M,ListeMaisons),
	M=maison('Spaniard',_,_,'Dog',_).
	
assertion_3(ListeMaisons) :- 
	member(M,ListeMaisons),
	M=maison(_,'Green','Coffee',_,_).
	
assertion_4(ListeMaisons) :- 
	member(M,ListeMaisons),
	M=maison('Italian',_,'Tea',_,_).
	
assertion_5(ListeMaisons) :-
	droite(M1,M2,ListeMaisons),
	M1=maison(_,'Green',_,_,_),
	M2=maison(_,'Ivory',_,_,_).
		
assertion_6(ListeMaisons) :- 
	member(M,ListeMaisons),
	M=maison(_,_,_,'Snails','The Winston').
		
assertion_7(ListeMaisons) :- 
	member(M,ListeMaisons),
	M=maison(_,'Yellow',_,_,'Kools').
		
assertion_8(ListeMaisons) :-
	milieu(M,ListeMaisons),
	M=maison(_,_,'Milk',_,_).

assertion_9(ListeMaisons) :- 
	tete(M,ListeMaisons),
	M=maison('The Norwegian',_,_,_,_).

assertion_10(ListeMaisons) :-
	droite(M1,M2,ListeMaisons),
	M1=maison(_,_,_,_,'Chesterfield'),
	M2=maison(_,_,_,'Fox',_).
assertion_10(ListeMaisons) :-
	gauche(M1,M2,ListeMaisons),
	M1=maison(_,_,_,_,'Chesterfield'),
	M2=maison(_,_,_,'Fox',_).


assertion_11(ListeMaisons) :-
	droite(M1,M2,ListeMaisons),
	M1=maison(_,_,_,_,'Kools'),
	M2=maison(_,_,_,'Horse',_).
assertion_11(ListeMaisons) :-
	gauche(M1,M2,ListeMaisons),
	M1=maison(_,_,_,_,'Kools'),
	M2=maison(_,_,_,'Horse',_).

assertion_12(ListeMaisons) :- 
	member(M,ListeMaisons),
	M=maison(_,_,_,'Orange Juice','Lucky Strike').
	
assertion_13(ListeMaisons) :- 
	member(M,ListeMaisons),
	M=maison('Dutchman',_,_,_,'Parliaments').
	
assertion_14(ListeMaisons) :-
	droite(M1,M2,ListeMaisons),
	M1=maison('The Norwegian',_,_,_,_),
	M2=maison(_,'Blue',_,_,_).
assertion_14(ListeMaisons) :-
	gauche(M1,M2,ListeMaisons),
	M1=maison('The Norwegian',_,_,_,_),
	M2=maison(_,'Blue',_,_,_).
	
solution(ListeMaisons) :-
	liste5(ListeMaisons),
	assertion_1(ListeMaisons),
	assertion_2(ListeMaisons),
	assertion_3(ListeMaisons),
	assertion_4(ListeMaisons),
	assertion_5(ListeMaisons),
	assertion_6(ListeMaisons),
	assertion_7(ListeMaisons),
	assertion_8(ListeMaisons),
	assertion_9(ListeMaisons),
	assertion_10(ListeMaisons),
	assertion_11(ListeMaisons),
	assertion_12(ListeMaisons),
	assertion_13(ListeMaisons),
	assertion_14(ListeMaisons).