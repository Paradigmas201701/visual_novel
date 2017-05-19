% Code of karma game
% Into terminal type: swipl -s karma-game.pl
% Into swipl console type: play .
% Enjoy it!!!

% Turn singleton warnings
:- style_check(-singleton).

:- [days].

:- [cardapioBakery].

% Define tomorrow like after head(today)
nextDay(X, Y, [X,Y|_]) :- Tomorrow = Y,
	play(Tomorrow).

nextDay(X, Y, [_|Tail]) :- nextDay(X, Y, Tail).

nextDay(X, _, [X]) :- write('What?! No, stop! That\'s enough! It was a long week.. Enjoy your weekend!'), nl,
	play(n, fri).

% Menu changes according of day
menuOfTheDay(Today, M) :-
	menuBakery(Today, M).

writeMenu([M]) :- write(M), write('.').
writeMenu([M|Tail]) :- write(M), write(', '),
	writeMenu(Tail).

% Init game
play :- play(mon).

% End game
play(n, Today) :- write('Goodbye!'), nl.

% Continue game
play(y, Today) :-
	day(Tomorrow),
	days(D),
	nextDay(Today, Tomorrow, D).

days(D) :- findall(X, day(X), D).

clear :- write('\e[2J').

:- include('monday.pl').

:- include('tuesday.pl').

/* TODO
play(wed) :- write('Wednesday! <Necessario implementar a historia de quarta> Continue? y/n'), nl,
read(Choice), nl,
play(Choice, wed).
play(thu) :- write('Thursday! <Necessario implementar a historia de quinta> Continue? y/n'), nl,
read(Choice), nl,
play(Choice, thu).
play(fri) :- write('Friday! <Necessario implementar a historia de sexta> Continue? y/n'), nl,
read(Choice), nl,
play(Choice, fri).
*/
