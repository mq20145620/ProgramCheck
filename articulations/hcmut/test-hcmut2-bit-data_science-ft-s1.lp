year(1..2).
semester(1..2).
units_per_semester(4).
start_semester(1).

student(student).
enrolled_course(student, bit).
enrolled_major(student, data_science).
enrolled_flexible_units(student, 8).

%
% B Comp Sci / BIT
%

specified_credit(student, comp1000).
specified_credit(student, comp1010).
specified_credit(student, math1007).
specified_credit(student, stat1170).
specified_credit(student, comp2000).

specified_credit(student, comp2010).
specified_credit(student, comp1350).

unspecified_credit(student, 10).

goal :-
    enrolled(student, core(bit,1), credit, comp1000),
    enrolled(student, core(bit,3), credit, comp1350),	
    enrolled(student, core(bit,6), credit, math1007),
    enrolled(student, core(bit,7), credit, comp2010),
    enrolled(student, major(data_science,1), credit, stat1170),
	enrolled(student, major(data_science,2), credit, comp1010),
    enrolled(student, flexible(1), credit, flex(1)),
    enrolled(student, flexible(2), credit, comp2000),
    credit_at_time(student, credit, 80),

    enrolled(student, core(bit,2), 1, 1, comp1300),
    enrolled(student, core(bit,4), 1, 1, comp2250),
	enrolled(student, major(data_science,5), 1, 1,stat2170),
    enrolled(student, flexible(3), 1, 1, flex(2)),
    credit_at_time(student, 1, 1, 40),

	enrolled(student, major(data_science,4), 1, 2, comp2350),
	enrolled(student, major(data_science,3), 1, 2, comp2200),
    enrolled(student, flexible(4), 1, 2, flex(3)),
    enrolled(student, flexible(5), 1, 2, flex(4)),
    credit_at_time(student, 1, 2, 40),

	enrolled(student, major(data_science,6), 2, 1,comp3210),
    enrolled(student, core(bit,8), 2, 1, COMP3XXX),         % Option
	enrolled(student, major(data_science,8), 2, 1, OPTION3),
    enrolled(student, flexible(6), 2, 1, flex(5)),
    credit_at_time(student, 2, 1, 40),    

    enrolled(student, core(bit,5), 2, 2, comp3850),
	enrolled(student, major(data_science,7), 2, 2, stat3102),
    enrolled(student, flexible(7), 2, 2, flex(6)),
    enrolled(student, flexible(8), 2, 2, flex(7)),
    credit_at_time(student, 2, 2, 40).    

:- not goal.

