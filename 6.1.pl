%Vladislav Ebert
%241RDB316

main([]).
main([Izmers | Citi]) :-
    trijst(Izmers),
    main(Citi).
trijst(Izmers) :-
    rindas(1, Izmers).

rindas(Aktual, Maksm) :-
    Aktual =< Maksm,
    Ats is Maksm - Aktual,
    ats(Ats),
    zvaigz(Aktual), nl,
    Nakoš is Aktual + 2,
    rindas(Nakoš, Maksm).

rindas(Aktual, Maksm) :-
    Aktual > Maksm.
  
ats(0) :-!.
ats(N) :-
    N > 0,
    write('\u00a0'),
    N1 is N - 1,
    ats(N1).

zvaigz(0) :-!.
zvaigz(K) :-
    K > 0,
    write('*'),
    K1 is K - 1,
    zvaigz(K1).
