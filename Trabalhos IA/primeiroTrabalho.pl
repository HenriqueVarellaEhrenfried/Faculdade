element_at(X,[X|_],1).
element_at(X,[_|L],K) :-
    element_at(X,L,K1), K is K1 + 1.

/*--------------------PRIMEIRA PESAGEM-------------------*/
primeira_pesagem_caso1(Lista, Caso) :-
   element_at(M1,Lista,1),
   element_at(M2,Lista,2),
   element_at(M3,Lista,3),
   element_at(M4,Lista,4),
   element_at(M5,Lista,5),
   element_at(M6,Lista,6),
   element_at(M7,Lista,7),
   element_at(M8,Lista,8),
   Soma1 is (M1+M2+M3+M4),
   Soma2 is (M5+M6+M7+M8),
   Soma1 > Soma2,
   Caso is 1.
primeira_pesagem_caso2(Lista, Caso) :-
   element_at(M1,Lista,1),
   element_at(M2,Lista,2),
   element_at(M3,Lista,3),
   element_at(M4,Lista,4),
   element_at(M5,Lista,5),
   element_at(M6,Lista,6),
   element_at(M7,Lista,7),
   element_at(M8,Lista,8),
   Soma1 is (M1+M2+M3+M4),
   Soma2 is (M5+M6+M7+M8),
   Soma1 == Soma2,
   Caso is 2.
primeira_pesagem_caso3(Lista, Caso) :-
   element_at(M1,Lista,1),
   element_at(M2,Lista,2),
   element_at(M3,Lista,3),
   element_at(M4,Lista,4),
   element_at(M5,Lista,5),
   element_at(M6,Lista,6),
   element_at(M7,Lista,7),
   element_at(M8,Lista,8),
   Soma1 is (M1+M2+M3+M4),
   Soma2 is (M5+M6+M7+M8),
   Soma1 < Soma2,
   Caso is 3.

primeira_pesagem(Lista, Caso) :-
   primeira_pesagem_caso1(Lista, Caso);
   primeira_pesagem_caso2(Lista, Caso);
   primeira_pesagem_caso3(Lista, Caso).
/*------------------------------------------------------*/
/*----------------------SEGUNDA PESAGEM----------------------*/
segunda_pesagem_caso1(Lista,Caso, Caso1,1) :-
   Caso == 1,
   element_at(M1,Lista,1),
   element_at(M2,Lista,2),
   element_at(M3,Lista,3),
   element_at(M5,Lista,5),

   element_at(M4,Lista,4),
   element_at(M9,Lista,9),
   element_at(M10,Lista,10),
   element_at(M11,Lista,11),

   Soma1 is (M1+M2+M3+M5),
   Soma2 is (M4+M9+M10+M11),
   Soma1 > Soma2,
   Caso1 is 101.
segunda_pesagem_caso2(Lista,Caso, Caso1, 1) :-
   Caso == 1,
   element_at(M1,Lista,1),
   element_at(M2,Lista,2),
   element_at(M3,Lista,3),
   element_at(M5,Lista,5),

   element_at(M4,Lista,4),
   element_at(M9,Lista,9),
   element_at(M10,Lista,10),
   element_at(M11,Lista,11),

   Soma1 is (M1+M2+M3+M5),
   Soma2 is (M4+M9+M10+M11),
   Soma1 == Soma2,
   Caso1 is 102.
segunda_pesagem_caso3(Lista,Caso, Caso1, 1) :-
   Caso == 1,
   element_at(M1,Lista,1),
   element_at(M2,Lista,2),
   element_at(M3,Lista,3),
   element_at(M5,Lista,5),

   element_at(M4,Lista,4),
   element_at(M9,Lista,9),
   element_at(M10,Lista,10),
   element_at(M11,Lista,11),

   Soma1 is (M1+M2+M3+M5),
   Soma2 is (M4+M9+M10+M11),
   Soma1 < Soma2,
   Caso1 is 103.
segunda_pesagem_caso4(Lista,Caso, Caso1, 2) :-
   Caso == 2,
   element_at(M9,Lista,9),
   element_at(M10,Lista,10),
   element_at(M11,Lista,11),

   element_at(M1,Lista,1),
   element_at(M2,Lista,2),
   element_at(M3,Lista,3),

   Soma1 is (M9+M10+M11),
   Soma2 is (M1+M2+M3),
   Soma1 > Soma2,
   Caso1 is 204.
segunda_pesagem_caso5(Lista,Caso, Caso1, 2) :-
   Caso == 2,
   element_at(M9,Lista,9),
   element_at(M10,Lista,10),
   element_at(M11,Lista,11),

   element_at(M1,Lista,1),
   element_at(M2,Lista,2),
   element_at(M3,Lista,3),

   Soma1 is (M9+M10+M11),
   Soma2 is (M1+M2+M3),
   Soma1 == Soma2,
   Caso1 is 205.
segunda_pesagem_caso6(Lista,Caso, Caso1, 2) :-
   Caso == 2,
   element_at(M9,Lista,9),
   element_at(M10,Lista,10),
   element_at(M11,Lista,11),

   element_at(M1,Lista,1),
   element_at(M2,Lista,2),
   element_at(M3,Lista,3),

   Soma1 is (M9+M10+M11),
   Soma2 is (M1+M2+M3),
   Soma1 < Soma2,
   Caso1 is 206.
segunda_pesagem_caso7(Lista,Caso, Caso1, 3) :-
   Caso == 3,
   element_at(M1,Lista,1),
   element_at(M2,Lista,2),
   element_at(M3,Lista,3),
   element_at(M5,Lista,5),

   element_at(M4,Lista,4),
   element_at(M9,Lista,9),
   element_at(M10,Lista,10),
   element_at(M11,Lista,11),

   Soma1 is (M1+M2+M3+M5),
   Soma2 is (M4+M9+M10+M11),
   Soma1 > Soma2,
   Caso1 is 307.
segunda_pesagem_caso8(Lista,Caso, Caso1, 3) :-
   Caso == 3,
   element_at(M1,Lista,1),
   element_at(M2,Lista,2),
   element_at(M3,Lista,3),
   element_at(M5,Lista,5),

   element_at(M4,Lista,4),
   element_at(M9,Lista,9),
   element_at(M10,Lista,10),
   element_at(M11,Lista,11),

   Soma1 is (M1+M2+M3+M5),
   Soma2 is (M4+M9+M10+M11),
   Soma1 == Soma2,
   Caso1 is 308.
segunda_pesagem_caso9(Lista,Caso,Caso1, 3) :-
   Caso == 3,
   element_at(M1,Lista,1),
   element_at(M2,Lista,2),
   element_at(M3,Lista,3),
   element_at(M5,Lista,5),

   element_at(M4,Lista,4),
   element_at(M9,Lista,9),
   element_at(M10,Lista,10),
   element_at(M11,Lista,11),

   Soma1 is (M1+M2+M3+M5),
   Soma2 is (M4+M9+M10+M11),
   Soma1 < Soma2,
   Caso1 is 309.

segunda_pesagem(Lista,Caso, Caso1) :-
   segunda_pesagem_caso1(Lista,Caso, Caso1, Caso);
   segunda_pesagem_caso2(Lista,Caso, Caso1, Caso);
   segunda_pesagem_caso3(Lista,Caso, Caso1, Caso);
   segunda_pesagem_caso4(Lista,Caso, Caso1, Caso);
   segunda_pesagem_caso5(Lista,Caso, Caso1, Caso);
   segunda_pesagem_caso6(Lista,Caso, Caso1, Caso);
   segunda_pesagem_caso7(Lista,Caso, Caso1, Caso);
   segunda_pesagem_caso8(Lista,Caso, Caso1, Caso);
   segunda_pesagem_caso9(Lista,Caso, Caso1, Caso).
/*----------------------------------------------------------*/
/*--------------------TERCEIRA PESAGEM----------------------*/
terceira_pesagem_caso1(Lista,Caso1,Posicao,Peso,101) :-
   Caso1 == 101,
   element_at(M1,Lista,1),
   element_at(M2,Lista,2),
   M1>M2,
   Posicao is 1,
   Peso = ('Mais pesada').   
terceira_pesagem_caso2(Lista,Caso1,Posicao,Peso,101) :-
   Caso1 == 101,
   element_at(M1,Lista,1),
   element_at(M2,Lista,2),
   M1==M2,
   Posicao is 3,
   Peso = ('Mais pesada').
terceira_pesagem_caso3(Lista,Caso1,Posicao,Peso,101) :-
   Caso1 == 101,
   element_at(M1,Lista,1),
   element_at(M2,Lista,2),
   M1<M2,
   Posicao is 2,
   Peso = ('Mais pesada').
terceira_pesagem_caso4(Lista,Caso1,Posicao,Peso,102) :-
   Caso1 == 102,
   element_at(M6,Lista,6),
   element_at(M7,Lista,7),
   M6>M7,
   Posicao is 7,
   Peso = ('Mais leve').
terceira_pesagem_caso5(Lista,Caso1,Posicao,Peso,102) :-
   Caso1 == 102,
   element_at(M6,Lista,6),
   element_at(M7,Lista,7),
   M6==M7,
   Posicao is 8,
   Peso = ('Mais leve').
terceira_pesagem_caso6(Lista,Caso1,Posicao,Peso,102) :-
   Caso1 == 102,
   element_at(M6,Lista,6),
   element_at(M7,Lista,7),
   M6<M7,
   Posicao is 6,
   Peso = ('Mais leve').
terceira_pesagem_caso7(Lista,Caso1,Posicao,Peso,103) :-
   Caso1 == 103,
   element_at(M4,Lista,4),
   element_at(M9,Lista,9),
   M4>M9,
   Posicao is 4,
   Peso = ('Mais pesada').
terceira_pesagem_caso8(Lista,Caso1,Posicao,Peso,103) :-
   Caso1 == 103,
   element_at(M4,Lista,4),
   element_at(M9,Lista,9),
   M4==M9,
   Posicao is 5,
   Peso = ('Mais leve').
terceira_pesagem_caso9(Lista,Caso1,Posicao,Peso,103) :-
   Caso1 == 103,
   element_at(M4,Lista,4),
   element_at(M9,Lista,9),
   M4<M9,
   Posicao = ('Impossivel'),
   Peso = ('Impossivel').
terceira_pesagem_caso10(Lista,Caso1,Posicao,Peso,204) :-
   Caso1 == 204,
   element_at(M9,Lista,9),
   element_at(M10,Lista,10),
   M9>M10,
   Posicao is 9,
   Peso = ('Mais pesada').
terceira_pesagem_caso11(Lista,Caso1,Posicao,Peso,204) :-
   Caso1 == 204,
   element_at(M9,Lista,9),
   element_at(M10,Lista,10),
   M9==M10,
   Posicao is 11,
   Peso = ('Mais pesada').
terceira_pesagem_caso12(Lista,Caso1,Posicao,Peso,204) :-
   Caso1 == 204,
   element_at(M9,Lista,9),
   element_at(M10,Lista,10),
   M9<M10,
   Posicao is 10,
   Peso = ('Mais pesada').
terceira_pesagem_caso13(Lista,Caso1,Posicao,Peso,205) :-
   Caso1 == 205,
   element_at(M12,Lista,12),
   element_at(M1,Lista,1),
   M12>M1,
   Posicao is 12,
   Peso = ('Mais pesada').
terceira_pesagem_caso14(Lista,Caso1,Posicao,Peso,205) :-
   Caso1 == 205,
   element_at(M12,Lista,12),
   element_at(M1,Lista,1),
   M12==M1,
   Posicao = ('Impossivel'),
   Peso = ('Impossivel').
terceira_pesagem_caso15(Lista,Caso1,Posicao,Peso,205) :-
   Caso1 == 205,
   element_at(M12,Lista,12),
   element_at(M1,Lista,1),
   M12<M1,
   Posicao is 12,
   Peso = ('Mais leve').
terceira_pesagem_caso16(Lista,Caso1,Posicao,Peso,206) :-
   Caso1 == 206,
   element_at(M9,Lista,9),
   element_at(M10,Lista,10),
   M9>M10,
   Posicao is 10,
   Peso = ('Mais leve').
terceira_pesagem_caso17(Lista,Caso1,Posicao,Peso,206) :-
   Caso1 == 206,
   element_at(M9,Lista,9),
   element_at(M10,Lista,10),
   M9==M10,
   Posicao is 11,
   Peso = ('Mais leve').
terceira_pesagem_caso18(Lista,Caso1,Posicao,Peso,206) :-
   Caso1 == 206,
   element_at(M9,Lista,9),
   element_at(M10,Lista,10),
   M9<M10,
   Posicao is 9,
   Peso = ('Mais leve').
terceira_pesagem_caso19(Lista,Caso1,Posicao,Peso,307) :-
   Caso1 == 307,
   element_at(M4,Lista,4),
   element_at(M9,Lista,9),
   M4>M9,
   Posicao = ('Impossivel'),
   Peso = ('Impossivel').
terceira_pesagem_caso20(Lista,Caso1,Posicao,Peso,307) :-
   Caso1 == 307,
   element_at(M4,Lista,4),
   element_at(M9,Lista,9),
   M4==M9,
   Posicao is 5,
   Peso = ('Mais pesada').
terceira_pesagem_caso21(Lista,Caso1,Posicao,Peso,307) :-
   Caso1 == 307,
   element_at(M4,Lista,4),
   element_at(M9,Lista,9),
   M4<M9,
   Posicao is 4,
   Peso = ('Mais leve').
terceira_pesagem_caso22(Lista,Caso1,Posicao,Peso,308) :-
   Caso1 == 308,
   element_at(M6,Lista,6),
   element_at(M7,Lista,7),
   M6>M7,
   Posicao is 6,
   Peso = ('Mais pesada').
terceira_pesagem_caso23(Lista,Caso1,Posicao,Peso,308) :-
   Caso1 == 308,
   element_at(M6,Lista,6),
   element_at(M7,Lista,7),
   M6==M7,
   Posicao is 8,
   Peso = ('Mais pesada').
terceira_pesagem_caso24(Lista,Caso1,Posicao,Peso,308) :-
   Caso1 == 308,
   element_at(M6,Lista,6),
   element_at(M7,Lista,7),
   M6<M7,
   Posicao is 7,
   Peso = ('Mais pesada').
terceira_pesagem_caso25(Lista,Caso1,Posicao,Peso,309) :-
   Caso1 == 309,
   element_at(M1,Lista,1),
   element_at(M2,Lista,2),
   M1>M2,
   Posicao is 2,
   Peso = ('Mais leve').
terceira_pesagem_caso26(Lista,Caso1,Posicao,Peso,309) :-
   Caso1 == 309,
   element_at(M1,Lista,1),
   element_at(M2,Lista,2),
   M1==M2,
   Posicao is 3,
   Peso = ('Mais leve').
terceira_pesagem_caso27(Lista,Caso1,Posicao,Peso,309) :-
   Caso1 == 309,
   element_at(M1,Lista,1),
   element_at(M2,Lista,2),
   M1<M2,
   Posicao is 1,
   Peso = ('Mais leve').
terceira_pesagem(Lista,Caso1,Posicao,Peso):-

   terceira_pesagem_caso1(Lista,Caso1,Posicao,Peso,Caso1);
   terceira_pesagem_caso2(Lista,Caso1,Posicao,Peso,Caso1);
   terceira_pesagem_caso3(Lista,Caso1,Posicao,Peso,Caso1);
   terceira_pesagem_caso4(Lista,Caso1,Posicao,Peso,Caso1);
   terceira_pesagem_caso5(Lista,Caso1,Posicao,Peso,Caso1);
   terceira_pesagem_caso6(Lista,Caso1,Posicao,Peso,Caso1);
   terceira_pesagem_caso7(Lista,Caso1,Posicao,Peso,Caso1);
   terceira_pesagem_caso8(Lista,Caso1,Posicao,Peso,Caso1);
   terceira_pesagem_caso9(Lista,Caso1,Posicao,Peso,Caso1);
   terceira_pesagem_caso10(Lista,Caso1,Posicao,Peso,Caso1);
   terceira_pesagem_caso11(Lista,Caso1,Posicao,Peso,Caso1);
   terceira_pesagem_caso12(Lista,Caso1,Posicao,Peso,Caso1);
   terceira_pesagem_caso13(Lista,Caso1,Posicao,Peso,Caso1);
   terceira_pesagem_caso14(Lista,Caso1,Posicao,Peso,Caso1);
   terceira_pesagem_caso15(Lista,Caso1,Posicao,Peso,Caso1);
   terceira_pesagem_caso16(Lista,Caso1,Posicao,Peso,Caso1);
   terceira_pesagem_caso17(Lista,Caso1,Posicao,Peso,Caso1);
   terceira_pesagem_caso18(Lista,Caso1,Posicao,Peso,Caso1);
   terceira_pesagem_caso19(Lista,Caso1,Posicao,Peso,Caso1);
   terceira_pesagem_caso20(Lista,Caso1,Posicao,Peso,Caso1);
   terceira_pesagem_caso21(Lista,Caso1,Posicao,Peso,Caso1);
   terceira_pesagem_caso22(Lista,Caso1,Posicao,Peso,Caso1);
   terceira_pesagem_caso23(Lista,Caso1,Posicao,Peso,Caso1);
   terceira_pesagem_caso24(Lista,Caso1,Posicao,Peso,Caso1);
   terceira_pesagem_caso25(Lista,Caso1,Posicao,Peso,Caso1);
   terceira_pesagem_caso26(Lista,Caso1,Posicao,Peso,Caso1);
   terceira_pesagem_caso27(Lista,Caso1,Posicao,Peso,Caso1).
/*----------------------------------------------------------*/
moeda_diferente(Lista, Posicao, Peso) :-   
   primeira_pesagem(Lista,Caso),
   segunda_pesagem(Lista,Caso,Caso1),
   terceira_pesagem(Lista,Caso1,Posicao,Peso).