year(1..3).
semester(1..2).
units_per_semester(4).
start_semester(2).

student(student1).
student(student2).

enrolled_course(student1, bgames).  % with MECO3150 PACE
enrolled_course(student2, bgames).  % with COMP3850 PACE
enrolled_flexible_units(student1, 4).
enrolled_flexible_units(student2, 4).

goal1 :- 
	enrolled(student1,core(bgames,1),1,2,comp1000),
	enrolled(student1,core(bgames,6),1,2,comp1160),
	enrolled(student1,flexible(1),1,2,engg1000),
	enrolled(student1,flexible(2),1,2,engg1050),

	enrolled(student1,core(bgames,2),1,1,comp1150),
	enrolled(student1,core(bgames,5),1,1,comp1010),
	enrolled(student1,flexible(3),1,1,comp1800),
	enrolled(student1,flexible(4),1,1,engl2033),

	enrolled(student1,core(bgames,3),2,2,math1010),
	enrolled(student1,core(bgames,4),2,2,comp1350),
	enrolled(student1,core(bgames,9),2,2,comp2000),
	enrolled(student1,core(bgames,8),2,2,comp2160),

	enrolled(student1,core(bgames,7),2,1,comp2150),
	enrolled(student1,core(bgames,10),2,1,comp2110),
	enrolled(student1,core(bgames,11),2,1,comp2750),
	enrolled(student1,core(bgames,12),2,1,meco2140),

	enrolled(student1,core(bgames,13),3,2,meco2141),
	enrolled(student1,core(bgames,14),3,2,comp3150),
	enrolled(student1,core(bgames,17),3,2,comp3180),
	enrolled(student1,core(bgames,18),3,2,meco3029),

	enrolled(student1,core(bgames,15),3,1,comp3151),
	enrolled(student1,core(bgames,16),3,1,comp3170),
	enrolled(student1,core(bgames,19),3,1,comp3130),
	enrolled(student1,core(bgames,20),3,1,comp3850).

goal2 :- 
	enrolled(student2,core(bgames,1),1,2,comp1000),
	enrolled(student2,core(bgames,6),1,2,comp1160),
	enrolled(student2,flexible(1),1,2,engg1000),
	enrolled(student2,flexible(2),1,2,engg1050),

	enrolled(student2,core(bgames,2),1,1,comp1150),
	enrolled(student2,core(bgames,5),1,1,comp1010),
	enrolled(student2,flexible(3),1,1,comp1800),
	enrolled(student2,flexible(4),1,1,engl2033),

	enrolled(student2,core(bgames,3),2,2,math1010),
	enrolled(student2,core(bgames,4),2,2,comp1350),
	enrolled(student2,core(bgames,9),2,2,comp2000),
	enrolled(student2,core(bgames,8),2,2,comp2160),

	enrolled(student2,core(bgames,7),2,1,comp2150),
	enrolled(student2,core(bgames,10),2,1,comp2110),
	enrolled(student2,core(bgames,11),2,1,comp2750),
	enrolled(student2,core(bgames,12),2,1,meco2140),

	enrolled(student2,core(bgames,13),3,2,meco2141),
	enrolled(student2,core(bgames,14),3,2,comp3150),
	enrolled(student2,core(bgames,17),3,2,comp3180),
	enrolled(student2,core(bgames,18),3,2,meco3029),

	enrolled(student2,core(bgames,15),3,1,comp3151),
	enrolled(student2,core(bgames,16),3,1,comp3170),
	enrolled(student2,core(bgames,19),3,1,comp3130),
	enrolled(student2,core(bgames,20),3,1,meco3150).

:- not goal1.
:- not goal2.