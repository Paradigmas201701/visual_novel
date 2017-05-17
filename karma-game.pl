% Code of game karma
% Into terminal type: swipl -s karma-game.pl
% Into swipl console type: play .
% Enjoy it!!!

% Define the chars of game
character(devil).
character(angel).

% Init game
play(n) :- write('What a beatiful day, like any student you are going to your class!'), nl, !.

% To restart game
play(y) :- play.

play :-	write('Oh... One old lady trying to cross the street, you have one minute to get on your bus. Will help her?'), nl,
	write('1 Yes, it is the right thing to do!'), nl,
	write('2 No, I am in a hurry... Do not have a time to waste'), nl,
	write('3 Hear your thoughts'), nl,
	write('Choose an alternative'), nl,
	read(Choice),
	part1(Choice).

part1(1) :- write('OMG, You lost your bus! Now you can...'), nl,
	   write('1 Wait another blessed by god transport'), nl,
 	   write('2 Go on foot. Swearing a lot...'), nl,
	   write('3 Hear your thoughts'), nl,
	   write('Choose an alternative'), nl,
	   read(Choice),
	   part3(Choice).

part1(2) :- write('You get on the bus, had a nice ride and arrived at FCA! But you are hungry, eat or not?'), nl,
	   write('1 Yes, go make a honest coofee. However you\'re gonna miss some of your lesson.'), nl,
	   write('2 No, run to the classrom. To be a good student, sacrifices are needed.'), nl,
	   write('3 Hear your thoughts'), nl,
	   write('Choose an alternative'), nl,
	   read(Choice),
	   part2(Choice).

part1(3) :- write('Angel: She\'s and old lady, are you seriously not gonna help?'), nl,
		write('Devil: Why don\'t you not help and maybe even skip class today?'), nl,
		write('Press any button to continue...'), nl,
		read(Choice),
		play(y).

part2(1) :- write('In Obelixo you ask for a coofee with cheese bread.'), nl,
			write('The bread had too much milk, you are allergic and needed to go back home. Damn, that was a bad morning.'), nl,
 	    write('Would you like to play again y/n?'), nl,
	    read(GameOver),
	    play(GameOver).

part2(2) :- write('The Professor got a call from someone just as the class started and got really, really mad.'), nl,
			write('He passes one surprise task, anyone that is present does suficiently well.'), nl,
			write('The weather is annoying, your morning could have been better...'), nl,
 	    write('Would you like to play again y/n?'), nl,
	    read(GameOver),
	    play(GameOver).

part2(3) :- write('Angel: Angel thoughts for rule part1(2)'), nl,
		write('Devil: Devil thoughts for rule part1(2)'), nl,
		write('Press any button to continue...'), nl,
		read(Choice),
		part1(2).

part3(1) :- write('A few minutes passes.. And one friend offered a ride! Coincidentally she was also selling cereal bars.'), nl,
			write('You obviously buy some bars, you are hungry!'), nl,
			write('When you enter the classrom, your professor is talking with his grandma on the phone. He is Happy that some guy helped her cross the street!'), nl,
			write('Happiness is contagious, your morning is very good!'), nl,
			write('Would you like to play again y/n?'), nl,
			read(GameOver),
			play(GameOver).

part3(2) :- write('Walking you see beautiful trees and forget you\'re angry, it makes you think about life. Suddenly you smell sothing really good, it is comming from a bakery you never seen before.'), nl,
			write('It is inevitable that you want to go in and eat something...'), nl,
			write('Owww! Getting out, you found your professor with his grandma, the old lady that you helped!'), nl,
			write('She points at you and tells you professor you were the nice kid who helped her. He thanks you and offers a ride to college. He likes you better now and the old lady is happy'), nl,
			write('Happiness is contagious, your morning is very good!'), nl,
			write('Would you like to play again y/n?'), nl,
			read(GameOver),
			play(GameOver).

part3(3) :- write('Angel: Walking is good for your health, why don\' we walk?'), nl,
		write('Devil: Walk? Are you insane? I rather wait here and hope no other buss comes'), nl,
		write('Press any button to continue...'), nl,
		read(Choice),
		part1(1).


	%cardapio
		cardapio(segunda,[espaguete,suco,gelatina]).
