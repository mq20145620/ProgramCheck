year(1..3).
semester(1..2).
units_per_semester(4).
start_semester(1).

student(student).
enrolled_course(student, bit).
enrolled_major(student, software_tech).
enrolled_double_major(student, game_dev).
enrolled_flexible_units(student, 8).

goal :-
	enrolled(student, flexible(1),1,1,flex(1)),
	enrolled(student, core(bit,1),1,1,comp1000),
	enrolled(student, core(bit,2),1,1,comp1300),
	enrolled(student, core(bit,6),1,1,comp1150),

	enrolled(student, flexible(2),1,2,flex(2)),
	enrolled(student, core(bit,3),1,2,comp1350),
	enrolled(student, major(software_tech,1),1,2,comp1010),
	enrolled(student, major(software_tech,2),1,2,math1007),

	enrolled(student, flexible(3),2,1,comp2150),
	enrolled(student, flexible(4),2,1,meco2140),
	enrolled(student, core(bit,4),2,1,comp2250),
	enrolled(student, major(software_tech,4),2,1,comp2010),

	enrolled(student, flexible(5),2,2,flex(3)),
	enrolled(student, core(bit,7),2,2,comp2160),
	enrolled(student, major(software_tech,3),2,2,comp2000),
	enrolled(student, major(software_tech,5),2,2,comp2100),

	enrolled(student, flexible(6),3,1,comp3150),
	enrolled(student, core(bit,5),3,1,comp3850),
	enrolled(student, core(bit,8),3,1,comp3170),
	enrolled(student, major(software_tech,7),3,1,comp3100),

	enrolled(student, flexible(7),3,2,comp3180),
	enrolled(student, flexible(8),3,2,comp3151),
	enrolled(student, major(software_tech,6),3,2,comp3000),
	enrolled(student, major(software_tech,8),3,2,comp3160).

:- not goal.

