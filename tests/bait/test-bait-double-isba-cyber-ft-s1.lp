year(1..3).
semester(1..2).
units_per_semester(4).
start_semester(1).

student(student).
enrolled_course(student, bait).
enrolled_major(student, isba).
enrolled_double_major(student, cyber).
enrolled_flexible_units(student, 8).

goal :-
	enrolled(student,core(bait,1),1,1,comp1000),
	enrolled(student,core(bait,2),1,1,comp1300),
	enrolled(student,major(isba,1),1,1,comp1750),
	enrolled(student,major(isba,2),1,1,accg100),

	enrolled(student,core(bait,3),1,2,comp1350),
	enrolled(student,core(bait,6),1,2,comp1900),
	enrolled(student,flexible(1),1,2,math1007),
	enrolled(student,flexible(2),1,2,comp1010),

	enrolled(student,core(bait,4),2,1,comp2250),
	enrolled(student,major(isba,4),2,1,comp2750),
	enrolled(student,flexible(3),2,1,comp2310),
	enrolled(student,flexible(4),2,1,comp2300),

	enrolled(student,core(bait,7),2,2,comp2900),
	enrolled(student,major(isba,3),2,2,comp2350),
	enrolled(student,major(isba,5),2,2,accg250),
	enrolled(student,flexible(5),2,2,comp2100),

	enrolled(student,major(isba,8),3,1,accg358),
	enrolled(student,flexible(6),3,1,comp3320),
	enrolled(student,flexible(7),3,1,comp3300),
	enrolled(student,flexible(8),3,1,comp3100),

	enrolled(student,core(bait,5),3,2,comp3850),
	enrolled(student,core(bait,8),3,2,comp3900),
	enrolled(student,major(isba,6),3,2,comp3760),
	enrolled(student,major(isba,7),3,2,accg355).

:- not goal.

