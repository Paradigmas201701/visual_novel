
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
	read(AnyButton),
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
	read(AnyButton),
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
	read(AnyButton),
	mon1(1).

mon4(1) :- clear,
write('Owww! Inside you meet with your teacher and the old lady!'), nl,
write('She points at you and tells your teacher you were the nice kid who helped her. He thanks you for helping HIS grandma and offers you a ride to college. He likes you better now and the old lady is happy'), nl,
write('Happiness is contagious, had an amazing day!'), nl,
write('Continue to tomorrow y/n?'), nl,
read(GameOver),
play(GameOver, mon).

mon4(2) :- clear,
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
	read(AnyButton),
	mon3(2).
