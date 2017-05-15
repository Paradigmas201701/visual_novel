% Code of game karma
% Into terminal type: swipl -s karma-game.pl
% Into swipl console type: play .
% Enjoy it!!!

% Define the chars of game
character(devil).
character(angel).

% Init game
play(n) :- write('Wich beatiful day, like student you are going to your class!'), nl, !.

% To restart game
play(y) :- play.

play :-	write('Oh... One old lady trying to cross the street, you have 1 min to get your bus. Will help her?'), nl,
	write('1 Yes, it is the right thing to do!'), nl,
	write('2 No, I am in a hurry... Do not have a time to waste'), nl,
	write('Choose an alternative'), nl,
	read(Choice),
	part1(Choice).

part1(1) :- write('OMG, You lost your bus! Now you can...'), nl,
	   write('1 Wait another blessed by god transport'), nl,
 	   write('2 Go on foot. With much swearing...'), nl,
	   write('Choose an alternative'), nl,
	   read(Choice),
	   part3(Choice).

part1(2) :- write('You get the bus, nice travel! But you are hungy, eat or not?'), nl,
	   write('1 Yes, go make a honest coofee. But you will lose some of the lesson.'), nl,
	   write('2 No, go fast to classrom. To be one good student, sacrifices is needed.'), nl,
	   write('Choose an alternative'), nl,
	   read(Choice),
	   part2(Choice).

part2(1) :- write('In Obelixo you ask by coofee with cheese bread.'), nl,
			write('The bread was much milk, you are allergic and was needed back to the house, was an bad morning.'), nl,
 	    write('Would you like to play again y/n?'), nl,
	    read(GameOver),
	    play(GameOver).

part2(2) :- write('Professor was raged! Before start lesson some call makes he stay like that.'), nl,
			write('He pass one surprise work, anyone that is present go suficient well.'), nl,
			write('The weather is annoying, your morning could have been better...'), nl,
 	    write('Would you like to play again y/n?'), nl,
	    read(GameOver),
	    play(GameOver).

part3(1) :- write('Few minutes pass.. One friend offered a ride! Coincidentally was a friend selling cereal bars.'), nl,
			write('You evidently buy some bars, you are angry!'), nl,
			write('When you entry in classrom, your professor is talking with your grandma. He is Happy!'), nl,
			write('Happiness is contagious, your morning is very good!'), nl,
			write('Would you like to play again y/n?'), nl,
			read(GameOver),
			play(GameOver).

part3(1) :- write('Few minutes pass.. One friend offered a ride! Coincidentally was a friend selling cereal bars.'), nl,
			write('You evidently buy some bars, you are angry!'), nl,
			write('When you entry in classrom, your professor is talking with your grandma. He is Happy!'), nl,
			write('Happiness is contagious, your morning is very good!'), nl,
			write('Would you like to play again y/n?'), nl,
			read(GameOver),
			play(GameOver).

part3(1) :- write('Walking in the morning you see the beautiful trees, think about life and discover one new bakery.'), nl,
			write('Inevitable that you go eat something lightly...'), nl,
			write('Owww! Getting out, you found your professor with your grandma, the old lady that you had saved!'), nl,
			write('Everybody laughs, everybody happy, he proposed to lift you to college.'), nl,
			write('Happiness is contagious, your morning is very good!'), nl,
			write('Would you like to play again y/n?'), nl,
			read(GameOver),
			play(GameOver).
