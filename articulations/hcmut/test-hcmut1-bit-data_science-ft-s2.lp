year(1..2).
semester(1..2).
units_per_semester(4).
start_semester(2).

student(student).
enrolled_course(student, bit).
enrolled_major(student, data_science).
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
	enrolled(student, major(data_science,1),credit,stat1170),
	enrolled(student, core(bit,6),credit,math1007),
	enrolled(student, major(data_science,2),credit,comp1010),
    enrolled(student, core(bit,7),credit,comp2010),
    enrolled(student, flexible(1),credit,flex(1)),
    enrolled(student, flexible(2),credit,flex(2)),
    enrolled(student, flexible(3),credit,flex(3)),
	credit_at_time(student,credit,80),

	enrolled(student, core(bit,3),1,2,comp1350),
	enrolled(student, major(data_science,3),1,2,comp2200),
	enrolled(student, major(data_science,5),1,2,stat2170),
	enrolled(student, flexible(4),1,2,flex(4)),

	enrolled(student, core(bit,2),1,1,comp1300),
	enrolled(student, core(bit,4),1,1,comp2250),
	enrolled(student, flexible(5),1,1,flex(5)),
	enrolled(student, flexible(6),1,1,flex(6)),

	enrolled(student, major(data_science,4),2,2,comp2350),
	enrolled(student, core(bit,8),2,2,COMP3XXX),            % Option set
	enrolled(student, major(data_science,7),2,2,STAT3YYY),  % Option set
	enrolled(student, flexible(7),2,2,flex(7)),

	enrolled(student, core(bit,5),2,1,comp3850),
	enrolled(student, major(data_science,6),2,1,comp3210),
	enrolled(student, major(data_science,8),2,1,STAT3XXX),  % Option set
	enrolled(student, flexible(8),2,1,flex(8)).


:- not goal.


