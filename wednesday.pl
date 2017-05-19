
play(wed) :- clear,
	write('It\'s early in the morning, and your girlfriend calls you. She wants to skip class with you to go on a romantic date. What do you answer her?'), nl,
	write('1 SCORE! Let\'s go!'), nl,
	write('2 Can\'t we go after class? I really should not be skipping any classes. Missed too many already...'), nl,
	write('3 Hear your thoughts'), nl,
	write('Choose an alternative'), nl,
	read(Choice),
	wed1(Choice).

wed1(1) :- clear,
	write('You two get ready and meet at the Joesley Batista park. She tells you she loves you, but you don\'t feel too ready to assume that kind of commitment. what do you do?'), nl,
	write('1 Change subject and pretend that it did not happen.'), nl,
	write('2 Tell her you love her back, so she won\'t be hurt, because you care for her feelings.'), nl,
	write('3 Hear your thoughts'), nl,
	write('Choose an alternative'), nl,
	read(Choice),
	wed2(Choice).

wed1(2) :- clear,
	write('Your girlfriend gets mad at you, saying you value her less than school. You put an end to the discussion and go to school anyway.'), nl,
	write('When you get there, your teacher is at the teachers office, getting ready for class. He gives you a look and says hey. How do you proceed?'), nl,
	write('1 Be cordial, and talk to him in a friendly manner.'), nl,
	write('2 Pass right through and go straight to class, ignoring him.'), nl,
	write('3 Hear your thoughts'), nl,
	read(Choice),
	wed5(Choice).

wed1(3) :- clear,
	write('Angel: Go to class man, you know it\'s the right thing to do...'), nl,
	write('Devil: Girls >>>>>>>>> Abyss of other cool stuff >>>>>>>>>> School.'), nl,
	write('Press any button to continue...'), nl,
	read(Choice),
	play(wed).

wed2(1) :- clear,
	write('She gets really really mad at you for the way you acted, and the fight escalates to a point where you two break up. You notice it is still 10 in the morning. How do you proceed?'), nl,
	write('1 Go home and stay at rock bottom vibes all day, listening to blink-182\'s \"I Miss You\" song.'), nl,
	write('2 Try to catch the second class at school, sneaking in.'), nl,
	write('3 Hear your thoughts'), nl,
	write('Choose an alternative'), nl,
	read(Choice),
	wed3(Choice).

wed2(2) :- clear,
	write('She kisses you nonstop, and asks if you wanna come over to her house...'), nl,
	write('1 Sure baby, maybe we can catch a movie on movieFlix and grab a pizza.'), nl,
	write('2 I am not sure... I think I should go back to school now. I have already missed too many classes.'), nl,
	write('3 Hear your thoughts'), nl,
	write('Choose an alternative'), nl,
	read(Choice),
	wed4(Choice).

wed2(3) :- clear,
	write('Angel: Dude, go easy. Do not hurt her feelings. The girl is in love...'), nl,
	write('Devil: CHEESY! Aw man, you don\'t need that! You are young and free! Go score some kisses on the freshman girls!'), nl,
	write('Press any button to continue...'), nl,
	read(Choice),
	wed1(1).

wed3(1) :- clear,
	write('You are super depressed and won\'t be able to get out of bed until tomorrow. But perhaps tomorrow will be better? y/n'), nl,
	read(GameOver),
	play(GameOver, wed).

wed3(2) :- clear,
	write('You got caught trying to sneak in class, and discovered you had exceeded the maximum class skips you could do. You failed the class and everything went south.'), nl,
	write('The day was bad and you mourned it in bed. Perhaps tomorrow will be better? y/n'), nl,
	read(GameOver),
	play(GameOver, wed).

wed3(3) :- clear,
	write('Angel: Man, you should really try to do something productive with your day now...'), nl,
	write('Devil: Go home and spank it man. You deserve some rest.'), nl,
	write('Press any button to continue...'), nl,
	read(Choice),
	wed2(1).

wed4(1) :- clear,
	write('You two go to her place, and you score BIG time. It was a good day, after all.'), nl,
	write('Wanna see what comes next? y/n'), nl,
	read(GameOver),
	play(GameOver, wed).

wed4(2) :- clear,
	wed3(2).

wed4(3) :- clear,
	write('Angel: I will never understand you humans and your absolute need to copulate.'), nl,
	write('Devil: Go and score some, boy!'), nl,
	write('Press any button to continue...'), nl,
	read(Choice),
	wed2(2).

wed5(1) :- clear,
	write('Your teacher admires your good will and tells you that you aced the last test, then gives you a free pass for the day.'), nl,
	write('You go meet your girlfriend and the both of you have a very nice evening together. Tomorrow may be even better! Wanna see? y/n'), nl,
	read(GameOver),
	play(GameOver, wed).

wed5(2) :- clear,
	write('Your teacher dislikes the situation, but ignores it. Arriving in class, he skips you on the presence list on purpose'), nl,
	write('You then learn you could not miss any more classes and that you failed the subject.'), nl,
	write('This day sucked, but perhaps tomorrow will be better, wanna see? y/n'), nl,
	read(GameOver),
	play(GameOver, wed).


wed5(3) :- clear,
	write('Angel: Be a nice person, talk to him. He is your teacher after all, you owe him respect!'), nl,
	write('Devil: Teachers are LAAAAAAAAAME! Leave it be!'), nl,
	write('Press any button to continue...'), nl,
	read(Choice),
	wed1(2).
