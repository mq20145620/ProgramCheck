year(1..4).
semester(1..2).
units_per_semester(4).
start_semester(2).

student(student).
enrolled_course(student, beng).
enrolled_major(student, software_eng).
enrolled_flexible_units(student, 4).

goal :-
	enrolled(student,core(beng,1),1,2,engg1000),
	enrolled(student,major(software_eng,1),1,2,comp1000),
	enrolled(student,major(software_eng,6),1,2,math1007),
	enrolled(student,major(software_eng,5),1,2,comp1350),

	enrolled(student,core(beng,2),1,1,engg1050),
	enrolled(student,major(software_eng,2),1,1,comp1010),
	enrolled(student,major(software_eng,3),1,1,comp1050),
	enrolled(student,major(software_eng,4),1,1,comp1300),

	enrolled(student,core(beng,3),2,2,engg2000),
	enrolled(student,major(software_eng,7),2,2,comp2000),
	enrolled(student,major(software_eng,9),2,2,comp2050),
	enrolled(student,major(software_eng,10),2,2,comp2100),

	enrolled(student,core(beng,4),2,1,engg2050),
	enrolled(student,major(software_eng,8),2,1,comp2010),
	enrolled(student,major(software_eng,11),2,1,comp2250),
	enrolled(student,major(software_eng,12),2,1,math2007),

	enrolled(student,core(beng,5),3,2,engg3000),
	enrolled(student,major(software_eng,13),3,2,comp3000),
	enrolled(student,major(software_eng,14),3,2,comp3010),
	enrolled(student,major(software_eng,16),3,2,comp3160),

	enrolled(student,core(beng,6),3,1,engg3050),
	enrolled(student,major(software_eng,15),3,1,comp3100),
	enrolled(student,flexible(1),3,1,flex(1)),
	enrolled(student,flexible(2),3,1,flex(2)),

	enrolled(student,major(software_eng,17),4,2,comp4000),
	enrolled(student,major(software_eng,18),4,2,comp4050),
	enrolled(student,major(software_eng,20),4,2,comp4090),
	enrolled(student,flexible(3),4,2,flex(3)),

	enrolled(student,core(beng,7),4,1,engg4000),
	enrolled(student,major(software_eng,19),4,1,comp4060),
	enrolled(student,major(software_eng,21),4,1,comp4091),
	enrolled(student,flexible(4),4,1,flex(4)).


:- not goal.