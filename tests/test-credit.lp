year(1..3).
semester(1..2).
units_per_semester(4).
start_semester(1).

student(student).
enrolled_course(student, bit).
enrolled_major(student, software_tech).
enrolled_flexible_units(student, 8).

specified_credit(student, comp1000).
specified_credit(student, comp1010).
unspecified_credit(student, 20).

goal :-
    enrolled(student, core(bit,1),credit,comp1000),
	enrolled(student, major(software_tech,1),credit,comp1010),
	enrolled(student, flexible(1),credit,flex(1)),
	enrolled(student, flexible(2),credit,flex(2)),
    credit_at_time(student, credit, 40),

	enrolled(student, core(bit,6),1,1,comp1150),
	enrolled(student, core(bit,2),1,1,comp1300),
	enrolled(student, core(bit,4),1,1,comp2250),
    credit_at_time(student, 1, 1, 30),    

	enrolled(student, core(bit,3),1,2,comp1350),
	enrolled(student, major(software_tech,2),1,2,math1007),
	enrolled(student, major(software_tech,3),1,2,comp2000),
	enrolled(student, major(software_tech,5),1,2,comp2100),
    credit_at_time(student, 1, 2, 40),    

	enrolled(student, core(bit,7),2,1,math2007),
	enrolled(student, flexible(3),2,1,flex(3)),
	enrolled(student, major(software_tech,4),2,1,comp2010),
    credit_at_time(student, 2, 1, 30),    

	enrolled(student, major(software_tech,8),2,2,comp3160),
	enrolled(student, flexible(4),2,2,flex(4)),
	enrolled(student, flexible(5),2,2,flex(5)),
    credit_at_time(student, 2, 2, 30),    

	enrolled(student, major(software_tech,7),3,1,comp3100),
	enrolled(student, core(bit,8),3,1,comp3170),
	enrolled(student, flexible(6),3,1,flex(6)),
	enrolled(student, flexible(7),3,1,flex(7)),
    credit_at_time(student, 3, 1, 40),    

	enrolled(student, core(bit,5),3,2,comp3850),
	enrolled(student, major(software_tech,6),3,2,comp3000),
	enrolled(student, flexible(8),3,2,flex(8)),
    credit_at_time(student, 3, 2, 30).

:- not goal.

