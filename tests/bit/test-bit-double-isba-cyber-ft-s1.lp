year(1..3).
semester(1..2).
units_per_semester(4).
start_semester(1).

student(student).
enrolled_course(student, bit).
enrolled_major(student, isba).
enrolled_double_major(student, cyber).
enrolled_flexible_units(student, 8).

goal :-
	enrolled(student,core(bit,1),1,1,comp1000),
	enrolled(student,core(bit,2),1,1,comp1300),
	enrolled(student,major(isba,1),1,1,comp1750),
	enrolled(student,major(isba,2),1,1,accg100),

	enrolled(student,core(bit,3),1,2,comp1350),
	enrolled(student,core(bit,6),1,2,math1007),
	enrolled(student,flexible(1),1,2,comp1010),
	enrolled(student,flexible(2),1,2,flex(1)),

	enrolled(student,core(bit,4),2,1,comp2250),
	enrolled(student,core(bit,7),2,1,comp2110),
	enrolled(student,major(isba,4),2,1,comp2750),
	enrolled(student,flexible(3),2,1,comp2300),

	enrolled(student,major(isba,3),2,2,comp2350),
	enrolled(student,major(isba,5),2,2,accg250),
	enrolled(student,flexible(4),2,2,flex(3)),
	enrolled(student,flexible(5),2,2,flex(2)),

	enrolled(student,major(isba,8),3,1,accg358),
	enrolled(student,flexible(6),3,1,comp2310),
	enrolled(student,flexible(7),3,1,comp3320),
	enrolled(student,flexible(8),3,1,comp3300),

	enrolled(student,core(bit,5),3,2,comp3850),
	enrolled(student,core(bit,8),3,2,comp3250),
	enrolled(student,major(isba,6),3,2,comp3760),
	enrolled(student,major(isba,7),3,2,accg355).

:- not goal.

