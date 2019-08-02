year(1..3).
semester(1..2).
units_per_semester(4).
start_semester(1).

student(student).
enrolled_course(student, bait).
enrolled_major(student, game_dev).
enrolled_double_major(student, software_tech).
enrolled_flexible_units(student, 8).

goal :- 
	enrolled(student,core(bait,1),1,1,comp1000),
	enrolled(student,core(bait,2),1,1,comp1300),
	enrolled(student,core(bait,6),1,1,comp1900),
	enrolled(student,major(game_dev,2),1,1,comp1150),

	enrolled(student,core(bait,3),1,2,comp1350),
	enrolled(student,major(game_dev,1),1,2,comp1010),
	enrolled(student,flexible(1),1,2,math1007),
	enrolled(student,flexible(2),1,2,flex(1)),

	enrolled(student,major(game_dev,3),2,1,comp2150),
	enrolled(student,major(game_dev,5),2,1,meco2140),
	enrolled(student,flexible(3),2,1,comp2010),
	enrolled(student,flexible(4),2,1,flex(2)),

	enrolled(student,core(bait,4),2,2,comp2250),
	enrolled(student,core(bait,7),2,2,comp2900),
	enrolled(student,flexible(5),2,2,comp2000),
	enrolled(student,flexible(6),2,2,comp2100),

	enrolled(student,core(bait,8),3,1,comp3900),
	enrolled(student,major(game_dev,6),3,1,comp3150),
	enrolled(student,major(game_dev,7),3,1,comp3170),
	enrolled(student,flexible(7),3,1,comp3100),

	enrolled(student,core(bait,5),3,2,comp3850),
	enrolled(student,major(game_dev,4),3,2,comp2160),
	enrolled(student,major(game_dev,8),3,2,meco3029),
	enrolled(student,flexible(8),3,2,comp3000).

:- not goal.