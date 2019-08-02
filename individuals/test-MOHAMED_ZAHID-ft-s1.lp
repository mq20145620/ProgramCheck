year(1..2).
semester(1..2).
units_per_semester(4).
start_semester(1).

student(student).
enrolled_course(student, bit).
enrolled_major(student, cyber).
enrolled_double_major(student, web_and_mobile).
enrolled_flexible_units(student, 8).

%
% B Computer Engineering
%

specified_credit(student, comp1000).
specified_credit(student, comp1010).
specified_credit(student, math1010).

unspecified_credit(student, 10).

goal :- 
	enrolled(student,core(bit,1),credit,comp1000),
	enrolled(student,major(cyber,2),credit,comp1010),
	enrolled(student,flexible(1),credit,math1010),
	enrolled(student,flexible(2),credit,flex(1)),
	credit_at_time(student,credit,40),

	enrolled(student,core(bit,2),1,1,comp1300),
	enrolled(student,core(bit,6),1,1,comp1750),
	enrolled(student,core(bit,4),1,1,comp2250),
	credit_at_time(student,time(1,1),30),

	enrolled(student,core(bit,3),1,2,comp1350),
	enrolled(student,major(cyber,1),1,2,math1007).
	credit_at_time(student,time(1,2),20),

	enrolled(student,flexible(3),2,1,comp2110),
	enrolled(student,major(cyber,3),2,1,comp2300),
	enrolled(student,major(cyber,4),2,1,comp2310),
	enrolled(student,flexible(4),2,1,comp2750),
	credit_at_time(student,time(2,1),40),

	enrolled(student,core(bit,7),2,2,comp2000),
	enrolled(student,major(cyber,5),2,2,comp2350),
	enrolled(student,flexible(5),2,2,meco2141),
	credit_at_time(student,time(2,2),30),

	enrolled(student,major(cyber,6),3,1,comp3300),
	enrolled(student,flexible(6),3,1,comp3130),
	enrolled(student,core(bit,8),3,1,comp3000),
	enrolled(student,flexible(7),3,1,comp3100),
	credit_at_time(student,time(3,1),40),

	enrolled(student,major(cyber,7),3,2,comp3320),
	enrolled(student,flexible(8),3,2,comp3120),
	enrolled(student,core(bit,5),3,2,comp3850),
	enrolled(student,major(cyber,8),3,2,pict3011),
	credit_at_time(student,time(3,2),40).
	true.

:- not goal.


