year(1..3).
semester(1..2).
units_per_semester(4).
start_semester(1).

student(student).
enrolled_course(student, bait).
enrolled_major(student, cyber).
enrolled_double_major(student, isba).
enrolled_flexible_units(student, 8).

goal :- 
	enrolled(student,core(bait,1),time(1,1),comp1000),
	enrolled(student,core(bait,2),time(1,1),comp1300),
	enrolled(student,core(bait,6),time(1,1),comp1900),
	enrolled(student,flexible(1),time(1,1),comp1750),

	enrolled(student,core(bait,3),time(1,2),comp1350),
	enrolled(student,core(bait,4),time(1,2),comp2250),
	enrolled(student,major(cyber,1),time(1,2),math1007),
	enrolled(student,major(cyber,2),time(1,2),comp1010),

	enrolled(student,major(cyber,3),time(2,1),comp2300),
	enrolled(student,major(cyber,4),time(2,1),comp2310),
	enrolled(student,flexible(2),time(2,1),accg100),
	enrolled(student,flexible(3),time(2,1),comp2750),

	enrolled(student,core(bait,7),time(2,2),comp2900),
	enrolled(student,major(cyber,5),time(2,2),comp2350),
	enrolled(student,flexible(4),time(2,2),flex(1)),
	enrolled(student,flexible(5),time(2,2),accg250),

	enrolled(student,core(bait,8),time(3,1),comp3900),
	enrolled(student,major(cyber,6),time(3,1),comp3300),
	enrolled(student,major(cyber,7),time(3,1),comp3320),
	enrolled(student,flexible(6),time(3,1),accg358),

	enrolled(student,core(bait,5),time(3,2),comp3850),
	enrolled(student,major(cyber,8),time(3,2),pict3011),
	enrolled(student,flexible(7),time(3,2),accg355),
	enrolled(student,flexible(8),time(3,2),comp3760).	

:- not goal.

