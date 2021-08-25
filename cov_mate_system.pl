cov_mate:-
write('Welcome to COV-MATE System'),
nl,
write('Use the following Query to avail the features of COV-MATE System:'),
nl,
write("Use about_covid. to run a Covid-19 virtual test."),nl,
write("Use covid_diagnose. to know the basics of Covid-19."),nl,
write("Use covid_update. to know the daily update of Covid-19."),nl,
write("Use hospital_info. to know your nearest Covid-19 Specialized hospital."),nl,
write("Use test_center. to know your nearest Covid-19 PCR Test Center."),
nl.

/*About Covid-19*/
about_covid:-
write("COVID-19 is an infectious disease caused by SARS-CoV-2."),nl,
write("Main Symptoms of COVID-19:-"),nl,
write("1. High Fever."),nl,
write("2. Tiredness."),nl,
write("3. Dry Cough"),nl,nl,
write("This disease can spread from person to person through small droplets from the nose or the mouth when the infected person coughs or exhales"),nl,
nl.

/*Covid-19 Update*/
/*Knowledge Base*/
date(21/10/20,"1,545","1,747","24").
date(22/10/20,"1,696","1,687","24").
date(23/10/20,"1,586","1,533","14").
date(24/10/20,"1,094","1,498","19").
date(25/10/20,"1,308","1,544","23").
date(26/10/20,"1,436","1,493","15").
date(27/10/20,"1,335","1,523","20").

covid_update:-
	write("Covid-19 update till 27/10/2020: Cases: 401,586 Recovered: 318,123
 	Death: 5,838"),nl,

	write("Enter your desire Date(DD/MM/YY): "),nl,
	read(X),nl,
	date(X,A,B,C),nl,
	write("Covid-19 update on the "),write(X),nl,
	write("New Cases: "),write(A),nl,
	write("Recovered: "),write(B),nl,
	write("Death: "),write(C),nl.


/*Covid-19 Specialized Hospital*/
/*Knowledge Base*/

hospital(ctg,cha,"Chittagong Medical College","57 K.B. Fazlul Kader Rd, Chattogram 4203,Bangladesh.","Parkview Hospital Ltd.","94-103, Katalgonj Road,Panchlaish,Chattogram,Bangladesh.","Chittagong General Hospital","Andarkilla Rd, Chattogram 4000,Chattogram,Bangladesh.","_","_","_","_").

hospital(ctg,and,"Chittagong Medical College","57 K.B. Fazlul Kader Rd, Chattogram 4203,Bangladesh.","Parkview Hospital Ltd.","94-103, Katalgonj Road,Panchlaish,Chattogram,Bangladesh.","Chittagong General Hospital","Andarkilla Rd, Chattogram 4000,Chattogram,Bangladesh.","_","_","_","_").

hospital(ctg,gec,"Chittagong Medical College","57 K.B. Fazlul Kader Rd, Chattogram 4203,Bangladesh.","Parkview Hospital Ltd.","94-103, Katalgonj Road,Panchlaish,Chattogram,Bangladesh.","_","_","_","_","_","_").

hospital(ctg,hal,"Al Manahil Narchar General Hospital","Phul Chowdhury Para, North Halishahar, Beside B-Block 4000 Chittagong,Bangladesh.","_","_","_","_","_","_","_","_").

hospital(ctg,akk,"Chittagong Field Hospital,","Pakkar Matha Bus Stop, N1, Salimpur 4317","_","_","_","_","_","_","_","_").

hospital(dha,sha,"Dhaka Medical College and Hospital","	Secretariat Road, Shahbagh, Dhaka, Bangladesh","_","_","_","_","_","_","_","_").


hospital_info:-
	write("Note: Use First Three Letter Of the District and Area Name"),nl,
	write("Enter Your District Name: "),nl,
	read(X),nl,
	write("Enter Your Area Name: "),nl,
	read(Y),nl,
	hospital(X,Y,A,B,C,D,E,F,G,H,I,J),nl,
	write("Nearest Hospital List: "),
	nl,
	write(A),
	nl,
	write(B),
	nl,
	write(C),
	nl,
	write(D),
	nl,
	write(E),
	nl,
	write(F),
	nl,
	write(G),
	nl,
	write(H),
	nl,
	write(I),
	nl,
	write(J),
	nl.

/*Covid-19 PCR Test Center*/
/*Knowledge Base*/
suggest(ctg,"Chevron Clinical Laboratory Ltd.","Chittagong Medical College","Imperial Hospital Limited Hospital in Chittagong","Chittagong Field Hospital","Chittagong General Hospital").
suggest(dha,"Square Hospital","Ibn Sina Medical College Hospital","Bangladesh Institute of Health Sciences General Hospital","Enam Medical College and Hospital","Lab Aid Hospital").


test_center:-
	write("Note: Use First Three Letter Of the District"),nl,
	write("Enter Your District Name: "),nl,
	read(X),nl,
	suggest(X,A,B,C,D,E),nl,
	write("PCR Test Center List: "),
	nl,
	write(A),
	nl,
	write(B),
	nl,
	write(C),
	nl,
	write(D),
	nl,
	write(E),
	nl.


/*Diagnose Covid-19*/
covid_diagnose:-
hypothesis(Disease),
write('The System believe that the patient have infected with '),
write(Disease),
nl,
write('TAKE CARE '),
undo.

hypothesis(covid_19_mild)     :- covid_19_mild, !.
hypothesis(covid_19_accute)      :- covid_19_accute, !.
hypothesis(unknown). /* no diagnosis*/

covid_19_mild :-
verify("Fever"),
verify("Dry Cough"),
verify("Tiredness"),
write('Advices and Sugestions:'),
nl,
write("*Isolate Yourself for 14 days*"),
nl,
write("1. Firstly You need not be worried. Just relax and get admission in the hospital."),
nl,
write("2. Whenever you touch anything, Disinfect it immediately."),
nl,
write("3. Always wear a mask and use hand sanitizer to sanitize your hand."),
nl,
write("4. Eat Honey and black seed 2 times a day. It will help to boost your immune system."),
nl,
write("5. Stay away from cold items whatever it is food or anything. Drink hot water always."),
nl,
write("6. Drink Black Tea with ginger and lemon mixture."),
nl,
write("7. Inhale vapour of hot water."),
nl,
write("8. Always check your Oxygen Saturation using Oximeter."),
nl,
write("9. Keep a nebulizer and Oxygen cylinder in the touch of your hand"),
nl,
write("10. Consult Doctors whenever necessary. Do not eat any medications without consultation with a doctor."),
nl,
write("11. Always Pray and seek recovery from Almighty."),
nl.


covid_19_accute :-
verify("Loss of Taste or Smell"),
verify("Difficulty in Breathing and Oxygen Saturation Level below 85%"),
write('Advices and Sugestions:'),
nl,
write("*Immidiately admit hospital.*"),
nl,
write("Till then follow the advices below:"),
nl,
write("1. Firstly You need not be worried. Just relax and get admission in the hospital."),
nl,
write("2. Whenever you touch anything, Disinfect it immediately."),
nl,
write("3. Always wear a mask and use hand sanitizer to sanitize your hand."),
nl,
write("4. Eat Honey and black seed 2 times a day. It will help to boost your immune system."),
nl,
write("5. Stay away from cold items whatever it is food or anything. Drink hot water always."),
nl,
write("6. Drink Black Tea with ginger and lemon mixture."),
nl,
write("7. Inhale vapour of hot water."),
nl,
write("8. Always check your Oxygen Saturation using Oximeter."),
nl,
write("9. Keep a nebulizer and Oxygen cylinder in the touch of your hand"),
nl,
write("10. Consult Doctors whenever necessary. Do not eat any medications without consultation with a doctor."),
nl,
write("11. Always Pray and seek recovery from Almighty."),
nl.



ask(Question) :-
write('Does you have following symptom: '),
write(Question),
write('? '),
read(Response),
nl,
( (Response == yes ; Response == y)
->
assert(yes(Question)) ;
assert(no(Question)), fail).
:- dynamic yes/1,no/1.

verify(S) :-
 (yes(S)
  ->
   true ;
 (no(S)
  ->
   fail ;
 ask(S))).

/* undo all yes/no assertions*/
undo :- retract(yes(_)),fail.
undo :- retract(no(_)),fail.
undo.