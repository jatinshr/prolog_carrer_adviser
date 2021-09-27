carrer(Val):- 
	write('\n************Welcome to Carrer Predictor************\n'), nl, 
	sub1(Val1, Sub), gl1(Sub),
	carr2(Val2, Carrer), gl2(Carrer), 
	excrse3(Val3, Course), gl3(Course), 
	comp4(Val4, Comp), gl4(Comp),
	proj5(Val5, Proj), gl5(Proj),
	Val is (Val1 + Val2 + Val3 + Val4 + Val5),
	end(Val,Job), assert(recommended(Job)), fail.


carrer(_) :- nl, convert_to_list(List), write('The list of recommended carrer for you are as follows: '), nl, printl(List), nl.


printl([]).
printl([H|T]):-write("* "), write(H), nl, printl(T).


gl1(Val):- write('If already marked yes(y) mark No(n):\nAre you interested in Subject: "'), write(Val), write('": '), get(Y), nl, Y = 121.
gl2(Val):- write('If already marked yes(y) mark No(n):\nAre you interested in carrer "'), write(Val), write('": '), get(Y), nl, Y = 121.
gl3(Val):- write('If already marked yes(y) mark No(n):\nHave you taken the extra course of "'), write(Val), write('": '), get(Y), nl, Y = 121.
gl4(Val):- write('If already marked yes(y) mark No(n):\nYour dream company is "'), write(Val), write('": '), get(Y), nl, Y = 121.
gl5(Val):- write('If already marked yes(y) mark No(n):\nHave you done project on "'), write(Val), write('": '), get(Y), nl, Y = 121.


convert_to_list([Px|Tail]):-retract(recommended(Px)), convert_to_list(Tail).
convert_to_list([]).


sub1(1,'Cloud computing').
sub1(2,'Computer Architecture').
sub1(3,'Data engineering').
sub1(4,'Hacking').
sub1(5,'IOT').
sub1(6,'Management').
sub1(7,'Networks').
sub1(8,'Programming').
sub1(9,'Parallel computing').
sub1(10,'Software Engineering').


carr2(11,'Business process analyst').
carr2(12,'Cloud computing').
carr2(13,'Developer').
carr2(14,'Security').
carr2(15,'System developer').
carr2(16,'Testing').


excrse3(17,'App development').
excrse3(18,'Distro making').
excrse3(19,'Full stack').
excrse3(20,'Hadoop').
excrse3(21,'Information security').
excrse3(22,'Machine learning').
excrse3(23,'Python').
excrse3(24,'R programming').
excrse3(25,'Shell programming').


comp4(26,'BPA').
comp4(27,'Cloud Services').
comp4(28,'Finance').
comp4(29,'Product based').
comp4(30,'product development').
comp4(31,'SAaS services').
comp4(32,'Sales and Marketing').
comp4(33,'Service Based').
comp4(34,'Testing and Maintainance Services').
comp4(35,'Web Services').	



proj5(36,'Cloud computing').
proj5(37,'Database security').
proj5(38,'Data science').
proj5(39,'Game development').
proj5(40,'Hacking').
proj5(41,'System designing').
proj5(42,'Testing').	
proj5(43,'Web technologies').



end(96,'Applications Developer').
end(100,'Applications Developer').

end(122,'Business Intelligence Analyst').
end(118,'Business Intelligence Analyst').
end(103,'Business Intelligence Analyst').

end(104,'Business Systems Analyst').
end(120,'Business Systems Analyst').
end(101,'Business Systems Analyst').

end(98,'CRM Business Analyst').
end(121,'CRM Business Analyst').
end(99,'CRM Business Analyst').

end(97,'CRM Technical Developer').
end(101,'CRM Technical Developer').
end(108,'CRM Technical Developer').


end(125,'Data Architect').
end(106,'Data Architect').
end(125,'Data Architect').

end(103,'Database Administrator').
end(97,'Database Administrator').
end(126,'Database Administrator').

end(111,'Database Developer').
end(110,'Database Developer').
end(107,'Database Developer').

end(116,'Database Manager').
end(11,'Database Manager').
end(116,'Database Manager').

end(126,'Design & UX').
end(94,'Design & UX').
end(96,'Design & UX').

end(94,'E-Commerce Analyst').
end(99,'E-Commerce Analyst').
end(96,'E-Commerce Analyst').


end(94,'Information Security Analyst').
end(123,'Information Security Analyst').
end(101,'Information Security Analyst').


end(124,'Information Technology Auditor').
end(91,'Information Technology Auditor').
end(118,'Information Technology Manager').

end(100,'Mobile Applications Developer').
end(102,'Mobile Applications Developer').
end(118,'Mobile Applications Developer').


end(111,'Network Engineer').
end(112,'Network Engineer').
end(109,'Network Engineer').

end(109,'Network Security Administrator').
end(110,'Network Security Administrator').
end(107,'Network Security Administrator').

end(107,'Network Security Engineer').
end(94,'Network Security Engineer').
end(95,'Network Security Engineer').

end(115,'Portal Administrator').
end(117,'Portal Administrator').
end(101,'Portal Administrator').

end(127,'Programmer Analyst').
end(123,'Programmer Analyst').
end(98,'Programmer Analyst').

end(105,'Project Manager').
end(106,'Project Manager').
end(114,'Project Manager').


end(102,'Quality Assurance Associate').
end(94,'Quality Assurance Associate').

end(112,'Software Developer').
end(108,'Software Developer').
end(109,'Software Developer').

end(110,'Software Engineer').
end(109,'Software Engineer').
end(111,'Software Engineer').

end(123,'Software Quality Assurance (QA) / Testing').
end(99,'Software Quality Assurance (QA) / Testing').
end(98,'Software Quality Assurance (QA) / Testing').

end(113,'Software Systems Engineer').
end(108,'Software Systems Engineer').
end(92,'Software Systems Engineer').

end(92,'Software Systems Engineer').
end(122,'Software Systems Engineer').
end(101,'Software Systems Engineer').


end(95,'Solutions Architect').
end(98,'Solutions Architect').
end(97,'Solutions Architect').

end(119,'Systems Analyst').
end(116,'Systems Analyst').
end(118,'Systems Analyst').


end(121,'Systems Security Administrator').
end(116,'Systems Security Administrator').
end(117,'Systems Security Administrator').

end(101,'Technical Engineer').
end(102,'Technical Engineer').
end(117,'Technical Engineer').

end(118,'Technical Services/Help Desk/Tech Support').
end(112,'Technical Services/Help Desk/Tech Support').
end(118,'Technical Services/Help Desk/Tech Support').

end(114,'Technical Support').
end(93,'Technical Support').
end(122,'Technical Support').

end(120,'UX Designer').
end(115,'UX Designer').
end(114,'UX Designer').

end(128,'Web Developer').
end(124,'Web Developer').
end(97,'Web Developer').
