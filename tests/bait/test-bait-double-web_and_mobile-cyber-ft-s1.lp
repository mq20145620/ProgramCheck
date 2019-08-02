year(1..3).
semester(1..2).
units_per_semester(4).
start_semester(1).

student(student).
enrolled_course(student, bait).
enrolled_major(student, web_and_mobile).
enrolled_double_major(student, cyber).
enrolled_flexible_units(student, 8).

goal :-
	enrolled(student,core(bait,1),1,1,comp1000),
	enrolled(student,core(bait,2),1,1,comp1300),
	enrolled(student,core(bait,6),1,1,comp1900),
	enrolled(student,major(web_and_mobile,1),1,1,comp1750),

	enrolled(student,core(bait,3),1,2,comp1350),
	enrolled(student,core(bait,4),1,2,comp2250),
	enrolled(student,major(web_and_mobile,2),1,2,comp1010),
	enrolled(student,flexible(1),1,2,math1007),

	enrolled(student,major(web_and_mobile,3),2,1,comp2110),
	enrolled(student,major(web_and_mobile,4),2,1,comp2750),
	enrolled(student,flexible(2),2,1,comp2310),
	enrolled(student,flexible(3),2,1,comp2300),

	enrolled(student,core(bait,7),2,2,comp2900),
	enrolled(student,major(web_and_mobile,5),2,2,meco2141),
	enrolled(student,flexible(4),2,2,comp2320),
	enrolled(student,flexible(5),2,2,comp2100),

	enrolled(student,major(web_and_mobile,7),3,1,comp3130),
	enrolled(student,major(web_and_mobile,8),3,1,comp3320),
	enrolled(student,flexible(6),3,1,comp3100),
	enrolled(student,flexible(7),3,1,comp3300),

	enrolled(student,core(bait,5),3,2,comp3850),
	enrolled(student,core(bait,8),3,2,comp3900),
	enrolled(student,major(web_and_mobile,6),3,2,comp3120),
	enrolled(student,flexible(8),3,2,comp3310).


:- not goal.

