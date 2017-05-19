
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
	read(AnyButton),
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
	read(AnyButton),
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
	read(AnyButton),
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
	read(AnyButton),
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
	read(AnyButton),
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
	read(AnyButton).

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
	read(AnyButton),
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
