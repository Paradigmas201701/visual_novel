% Code of game karma
% Into terminal type: swipl -s karma-game.pl
% Into swipl console type: play .
% Enjoy it!!!

% Define the chars of game
character(devil).
character(angel).

% Days of the week
day(mon).
day(tue).
day(wed).
day(thu).
day(fri).

%cardapioBakery
menuBakery(mon,['baguete','orange juice']).
menuBakery(tue,['croassaint','hot chocolat']).
menuBakery(wen,['brioche','coffe']).
menuBakery(thu,['cheese bread', 'pingado']).
menuBakery(fri,['pizza bread', 'ice tea']).

% Init game
play :- Today = mon,
play(Today).

% End game
play(n, Today) :- write('Goodbye!'), nl, !.

% Continue game
play(y, Today) :-
	days(D),
	nextDay(Today, Tomorrow, D).

days(D) :- findall(X, day(X), D).

nextDay(X, Y, [X,Y|_]) :- Tomorrow = Y,
	play(Tomorrow).
nextDay(X, Y, [_|Tail]) :- nextDay(X, Y, Tail).
nextDay(X, _, [X]) :- write('What?! No, stop! That\'s enough! It was a long week.. Enjoy your weekend!'), nl,
	play(n, fri).

menuOfTheDay(Today, M) :-
	menuBakery(Today, M).

writeMenu([M]) :- write(M), write('.').
writeMenu([M|Tail]) :- write(M), write(', '),
	writeMenu(Tail).

clear :- write('\e[2J').


play(wed) :- write('Wednesday! <Necessario implementar a historia de quarta> Continue? y/n'), nl,
read(Choice), nl,
play(Choice, wed).
play(thu) :- write('Thursday! <Necessario implementar a historia de quinta> Continue? y/n'), nl,
read(Choice), nl,
play(Choice, thu).
play(fri) :- write('Friday! <Necessario implementar a historia de sexta> Continue? y/n'), nl,
read(Choice), nl,
play(Choice, fri).



play(mon) :-	clear,
	write('Oh... One old lady is trying to cross the street, you have one minute to get on your bus. Will help her?'), nl,
	write('1 Yes, it is the right thing to do!'), nl,
	write('2 No, I am in a hurry... Do not have a time to waste'), nl,
	write('3 Hear your thoughts'), nl,
	write('Choose an alternative'), nl,
	read(Choice),
	mon1(Choice).

mon1(1) :- clear,
	write('OMG, You missed your bus! Now you can...'), nl,
	write('1 Wait another blessed by god transport'), nl,
	write('2 Go on foot. Swearing a lot...'), nl,
	write('3 Hear your thoughts'), nl,
	write('Choose an alternative'), nl,
	read(Choice),
	mon3(Choice).

mon1(2) :- clear,
	write('You get on the bus, had a nice ride and arrived at FCA! But you are hungry, eat or not?'), nl,
	write('1 Yes, go make a honest coofee. However you\'re gonna miss some of your lesson.'), nl,
	write('2 No, run to the classrom. To be a good student, sacrifices are needed.'), nl,
	write('3 Hear your thoughts'), nl,
	write('Choose an alternative'), nl,
	read(Choice),
	mon2(Choice).

mon1(3) :- clear,
	write('Angel: She\'s and old lady, are you seriously not gonna help?'), nl,
	write('Devil: Why don\'t you not help and maybe even skip class today?'), nl,
	write('Press any button to continue...'), nl,
	read(Choice),
	play(mon).

mon2(1) :- clear,
	write('In Obelixo you ask for a coofee with cheese bread.'), nl,
	write('The bread had too much milk, you are allergic and needed to go back home. Damn, that was a bad morning.'), nl,
  write('Would you like to play again y/n?'), nl,
  read(GameOver),
  play(GameOver, mon).

mon2(2) :- clear,
	write('The Professor got a call from someone just as the class started and got really, really mad.'), nl,
	write('He passes one surprise task, anyone that is present does suficiently well.'), nl,
	write('The weather is annoying, your morning could have been better...'), nl,
  write('Play tomorrow or stop playing y/n?'), nl,
  read(GameOver),
  play(GameOver, mon).

mon2(3) :- clear,
	write('Angel: Hey hey, stop right there! You know you should be in class already!'), nl,
	write('Devil: Are you kidding me? We are STARVING! I could even eat that stupid angelic face of yours. Hey bro, feed us!'), nl,
	write('Press any button to continue...'), nl,
	read(Choice),
	mon1(2).

mon3(1) :- clear,
	write('A few minutes passes.. And one friend offered a ride! Coincidentally she was also selling cereal bars.'), nl,
	write('You obviously buy some bars, you are hungry!'), nl,
	write('When you enter the classrom, your professor is talking with his grandma on the phone. He is Happy that some guy helped her cross the street!'), nl,
	write('Happiness is contagious, your morning is very good!'), nl,
	write('Would you like to play again y/n?'), nl,
	read(GameOver),
	play(GameOver, mon).

mon3(2) :- clear,
  write('Walking you see beautiful trees and forget you\'re angry, it makes you think about life. Suddenly you smell something really good, it is comming from a bakery you never seen before.'), nl,
  write('It is inevitable that you want to go in and eat something...'), nl,
  write('1 Go in!'), nl,
  write('2 Keep walking'), nl,
  write('3 Check Menu'), nl,
  read(Choice),
	mon4(Choice).

mon3(3) :- clear,
	write('Angel: Walking is good for your health, why don\'t we walk?'), nl,
	write('Devil: Walk? Are you insane? I rather wait here and hope no other buss comes'), nl,
	write('Press any button to continue...'), nl,
	read(Choice),
	mon1(1).

mon4(1) :- clear,
write('Owww! Inside you meet with your teacher and the old lady!'), nl,
write('She points at you and tells your teacher you were the nice kid who helped her. He thanks you for helping HIS grandma and offers you a ride to college. He likes you better now and the old lady is happy'), nl,
write('Happiness is contagious, had an amazing day!'), nl,
write('Continue to tomorrow y/n?'), nl,
read(GameOver),
play(GameOver, mon).

mon4(2)	clear,
	write('Just a few more minutes of walk and your professor passes by you on his car with his grandma, the old lady that you helped!'), nl,
	write('She points at you and tells your professor you were the nice kid who helped her. He stops the car, thanks you and offers a you ride to college and to pay you breakfast. He likes you better now and the old lady is happy'), nl,
	write('Happiness is contagious, had an amazing day!'), nl,
	write('Continue to tomorrow y/n?'), nl,
	read(GameOver),
	play(GameOver, mon).

mon4(3) :-	clear,
	menuOfTheDay(mon, M),
	writeMenu(M), nl,
	write('Press any button to continue...'), nl,
	read(Choice),
	mon3(2).


		%-------------------------------------------TUESDAY---------------------------------------%


play(tue) :- 	clear,
	write('(...) WHAT?! Gez, what\'s that noise? Wh.. Oh, it\'s your alarm. It\'s a new day today!'), nl,
	write('1 Hit snore.'), nl,
	write('2 Turn off the alarm, sit and rub your eyes'), nl,
	write('3 Hear your thoughts'), nl,
	write('Choose an alternative'), nl,
	read(Choice),
	tue1(Choice).

tue1(1) :- clear,
	write('Oh my oh my! You hit snore a lot of times without realizing it, you\'re late!'), nl,
	write('1 Jump out of bed in a hurry, dress the first thing you find and run to the bus stop'), nl,
	write('2 Skip class and keep sleeping'), nl,
	write('3 Hear your thoughts'), nl,
	write('Choose an alternative'), nl,
	read(Choice),
	tue2(Choice).

tue1(2) :- clear,
	write('It is a nice day and you have plenty of time to get ready!'), nl,
	write('1 Walk to FCA enjoying the beautiful day'), nl,
	write('2 Stall at home and take the bus'), nl,
	write('3 Hear your thoughts'), nl,
	write('Choose an alternative'), nl,
	read(Choice),
	tue3(Choice).

tue1(3) :- clear,
	write('Angel: zzzzzzZz'), nl,
	write('Devil: zzZZzZzzzZzSNOOOOOREzzzZZzzZZSNOOOOOOOOREEEZZzzZzzZZZZZzzzzzZ'), nl,
	write('Press any button to continue...'), nl,
	read(Choice),
	play(tue).


tue2(1) :- clear,
	write('Once you get to the stop, the bus is about to leave.'), nl,
	write('1 Signal like a crazy person hopping the bus driver will see you and wait'), nl,
	write('2 Give up, see the bus leaving and go back home to sleep some more'), nl,
	write('3 Hear your thoughts'), nl,
	write('Choose an alternative'), nl,
	read(Choice),
	tue4(Choice).

tue2(2) :- clear,
	write('You latter that day find out you missed an important surprise test. You flunked that class'), nl,
	write('That was a terrible day, keep playing to make it up tomorrow? y/n'), nl,
	read(GameOver),
	play(GameOver, tue).


tue2(3) :- clear,
	write('Angel: -Yawn- Good morning! We should hurry now, you don\'t want to miss your class!'), nl,
	write('Devil: -Snoring- ZZzZZZzzzZZZZzZZzZZZzzZZzZZZzzZZZZZzzZzZzZzzzzZZzzZZZZzzzzZZZZzzz'), nl,
	write('Press any button to continue...'), nl,
	read(Choice),
	tue1(1).


tue3(1) :- clear,
	write('You are walking and the sun is bright and life is good. You pass through the bakery you like and you still have plenty of time'), nl,
	write('1 Go in!'), nl,
	write('2 Keep walking and eat at Obelixo'), nl,
	write('3 Have a look at the day\'s menu'), nl,
	write('Choose an alternative'), nl,
	read(Choice),
	tue5(Choice).


tue3(2) :- clear,
	write('You read the news, take a shower and head to the buss stop, hop in the bus and meet with a friend there'), nl,
	write('You see he\'s studying'), nl,
	write('1 Ask what is he studying'), nl,
	write('2 Leave him be'), nl,
	write('3 Hear your thoughts'), nl,
	write('Choose an alternative'), nl,
	read(Choice),
	tue6(Choice, 3).


tue3(3) :- clear,
	write('Angel: Walking is good for your health! Let\'s go and enjoy the day!'), nl,
	write('Devil: Why? WHY did you wake me?! What did I ever do to you?! If you make me walk now I\'ll never speak with you again'), nl,
	write('Press any button to continue...'), nl,
	read(Choice),
	tue1(2).


tue4(1) :- clear,
	write('The bus driver sees you, so does everybody else on the bus. They all laught but you manage to get on the bus!'), nl,
	write('There you see a friend holding a book. He points out to you that your clothes are inside out.'), nl,
	write('1 Laught with him and change the subject: Ask what is he studying'), nl,
	write('2 Get mad and ignore him'), nl,
	write('3 Hear your thoughts'), nl,
	write('Choose an alternative'), nl,
	read(Choice),
	tue6(Choice, 4).

tue4(2) :- clear,
	write('You latter that day find out you missed an important surprise test. You flunked that class'), nl,
	write('That was a terrible day, keep playing to make it up tomorrow? y/n'), nl,
	read(GameOver),
	play(GameOver, tue).

tue4(3) :- clear,
	write('Angel: Run, run! We can still make it!'), nl,
	write('Devil: See?! You woke me up for nothing! It is gone! Let\'go home and sleep some more'), nl,
	write('Press any button to continue...'), nl,
	read(Choice),
	tue2(1).


tue5(1) :- clear,
	write('Inside you meet with your favorite\'s class teacher: Milana! However, you are embarassed to go and talk to her because you are stalling one assignment'), nl,
	write('But it\'s too late! She sees you and asks how the assignment is going!'), nl,
	write('1 Explain that all the teachers had the assignments and tests this week and ask for a deadline extention'), nl,
	write('2 Say it\'s going fine!'), nl,
	write('3 Hear your thoughts'), nl,
	write('Choose an alternative'), nl,
	read(Choice),
	tue7(Choice).

tue5(2) :- clear,
	write('You arrive at FCA and goes straight to Obelixo! There you see a friend of yours studying'), nl,
	write('1 Ask what is he studying'), nl,
	write('2 Leave him be'), nl,
	write('3 Hear your thoughts'), nl,
	write('Choose an alternative'), nl,
	read(Choice),
	tue6(Choice, 5).

tue5(3) :- clear,
	menuOfTheDay(tue, M),
	writeMenu(M), nl,
	write('Press any button to continue...'), nl,
	read(Choice),
	tue3(1).


tue6(1, _) :- clear,
	write('He says he is reviewing the subject os a class you\'re both taking toguether, and invites you to join him.'), nl,
	write('1 Study with him.'), nl,
	write('2 Say you\'re too tired today, maybe next time!'), nl,
	write('3 Hear your thoughts'), nl,
	write('Choose an alternative'), nl,
	read(Choice),
	tue8(Choice).

tue6(2, _) :- clear,
	write('At your class, there is a surprise test! You like that class so you don\'t do too bad, but your friend did awesome because he was studying just that!'), nl,
	write('Today could have been better. Keep playing and try again tomorrow? y/n'), nl,
	read(GameOver),
	play(GameOver, tue).


tue6(3) :- clear,
	write('Angel: That seems interesting! Ask him!'), nl,
	write('Devil: Don\'t you have a bottle of water? So we can \'accidentally\' spill some water at his book?'), nl,
	write('Press any button to continue...'), nl,
	read(Choice).

	tue6(3, 3) :- tue6(3), tue3(2).
	tue6(3, 4) :- tue6(3), tue4(1).
	tue6(3, 5) :- tue6(3), tue5(2).


tue7(1) :- clear,
	write('She hears you out, and she is a very nice person! It\'s almoust like she remembers how it is to be a student.'), nl,
	write('Milana gives the class an extention for the assignment, and doesn\'t aply the surprise test she was going to. '), nl,
	write('Everybody is happy includind you! What a great day!'), nl,
	write('Keep playing and make tomorrow a great day as well? y/n'), nl,
	read(GameOver),
	play(GameOver, tue).

tue7(2) :- clear,
	write('Milana asks you a bunch of questions about the assignment, however you don\'t know how to answer.'), nl,
	write('She sees you were lying, and you the explain that you didn\'t want to upset her, but all the teachers had the assignments and tests this week'), nl,
	write('She is upset  that you lied, but she remembers how it is to be a student. She cancels the surprise test she had planned, but you don\'t get a deadline extention.'), nl,
	write('The day was ok, but you can make tomorrow better. Keep playing? (y/n)'), nl,
	read(GameOver),
	play(GameOver, tue).

tue7(3) :- clear,
	write('Angel: You should be honest with her. What is the worst thing that can happen?'), nl,
	write('Devil: Uuuuuh, I don\' know, maybe she WILL FAIL HIM?! LIE LIE LIE!'), nl,
	write('Press any button to continue...'), nl,
	read(Choice),
	tue5(1).

tue8(1) :- clear,
	write('You guys study toguether while you eat and then go to class. There is a surprise test, but you and your friend do awesome because you just reviewed the subject!'), nl,
	write('It was a nice day, after all. Let\'s make tomorrow even nicer? y/n'), nl,
	read(GameOver),
	play(GameOver, tue).

tue8(2) :- clear,
	write('At your class, there is a surprise test! You like that class so you don\'t do too bad, but your friend did awesome because he was studying just that!'), nl,
	write('Today could have been better. Keep playing and try again tomorrow? y/n'), nl,
	read(GameOver),
	play(GameOver, tue).

tue8(3) :- clear,
	write('Angel: You love this subject! You should study with him!'), nl,
	write('Devil: Are you kidding me?! You don\'t even have a test and you are not payed to study.'), nl,
	write('Press any button to continue...'), nl,
	read(Choice),
	tue6(1, 1).
