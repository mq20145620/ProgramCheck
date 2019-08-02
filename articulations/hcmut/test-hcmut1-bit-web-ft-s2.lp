year(1..3).
semester(1..2).
units_per_semester(4).
start_semester(2).

student(student).
enrolled_course(student, bit).
enrolled_major(student, web_and_mobile).
enrolled_flexible_units(student, 8).

%
% B Computer Engineering
%

specified_credit(student, comp1000).
specified_credit(student, comp1010).
specified_credit(student, math1007).
specified_credit(student, comp2010).
specified_credit(student, stat1170).

unspecified_credit(student, 30).

goal :-
    enrolled(student, core(bit,1),credit,comp1000),
    enrolled(student, core(bit,6),credit,math1007),
	enrolled(student, major(web_and_mobile,2),credit,comp1010),
    enrolled(student, flexible(1),credit,stat1170),
    enrolled(student, flexible(2),credit,flex(1)),
    enrolled(student, flexible(3),credit,flex(2)),
    enrolled(student, flexible(4),credit,flex(3)),
    enrolled(student, flexible(5),credit,comp2010),
	credit_at_time(student,credit,80),

	enrolled(student, core(bit,3),1,2,comp1350),
	enrolled(student, flexible(6),1,2,flex(4)),
	enrolled(student, flexible(7),1,2,flex(5)),
	credit_at_time(student,1,2,30),

	enrolled(student, core(bit,2),1,1,comp1300),
	enrolled(student, major(web_and_mobile,1),1,1,comp1750),
	enrolled(student, major(web_and_mobile,3),1,1,comp2110),
	enrolled(student, major(web_and_mobile,4),1,1,comp2750),
	credit_at_time(student,1,1,40),

	enrolled(student, core(bit,7),2,2,COMP2XXX),
	enrolled(student, flexible(8),2,2,flex(6)),
	credit_at_time(student,2,2,20),

	enrolled(student, major(web_and_mobile,7),2,1,comp3130),
	enrolled(student, core(bit,8),2,1,COMP3XXX),
	enrolled(student, major(web_and_mobile,8),2,1,COMP3YYY),
	enrolled(student, core(bit,4),2,1,comp2250),
	credit_at_time(student,2,1,40),

	enrolled(student, major(web_and_mobile,5),3,2,meco2141),
	enrolled(student, major(web_and_mobile,6),3,2,comp3120),
	enrolled(student, core(bit,5),3,2,comp3850),
	credit_at_time(student,3,2,30),
	credit_at_time(student,3,1,0).


:- not goal.


