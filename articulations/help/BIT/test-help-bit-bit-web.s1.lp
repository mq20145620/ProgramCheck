year(1..2).
semester(1..2).
units_per_semester(4).
start_semester(1).

student(student).
enrolled_course(student, bit).
enrolled_major(student, web_and_mobile).
enrolled_flexible_units(student, 8).

%
% BIT to BIT web
%

specified_credit(student, comp1000).
specified_credit(student, comp1010).
specified_credit(student, comp1350).
specified_credit(student, math1007).
specified_credit(student, mgmt1020).
specified_credit(student, comp2250).
specified_credit(student, comp2050).
specified_credit(student, comp2110).
specified_credit(student, comp2750).
specified_credit(student, meco2141).

unspecified_credit(student, 20).


goal :-
    enrolled(student, core(bit,1), credit, comp1000),
    enrolled(student, core(bit,3), credit, comp1350),
	enrolled(student, major(web_and_mobile,2), credit, comp1010),
	enrolled(student, core(bit,6), credit, math1007),
	enrolled(student, major(web_and_mobile,3), credit, comp2110),
	enrolled(student, major(web_and_mobile,5), credit, meco2141),
	enrolled(student, major(web_and_mobile,4), credit, comp2750),
	enrolled(student, core(bit,7), credit, comp2050),
    enrolled(student, core(bit,4), credit, comp2250),
    enrolled(student, flexible(1), credit, mgmt1020),
    enrolled(student, flexible(2), credit, flex(2)),
    enrolled(student, flexible(3), credit, flex(3)),
	credit_at_time(student,credit, 120),

	enrolled(student, core(bit,2), 1, 1, comp1300),
	enrolled(student, major(web_and_mobile,1), 1, 1, comp1750),
	enrolled(student, flexible(4), 1, 1, flex(4)),
	enrolled(student, flexible(5), 1, 1, flex(5)),

	% enrolled(student, major(web_and_mobile,6), 1, 2, comp3120),
	% enrolled(student, major(web_and_mobile,7), 1, 2, comp3130),
	% enrolled(student, major(web_and_mobile,8), 1, 2, COMP3YYY),
	% enrolled(student, flexible(6), 1, 2, flex(6)),

	% enrolled(student, core(bit,5), 2, 1, comp3850),
	% enrolled(student, core(bit,8), 2, 1, COMP3XXX),
	% enrolled(student, flexible(7), 2, 1, flex(7)),
	% enrolled(student, flexible(8), 2, 1, flex(8)),
	
    credit_at_time(student, 1, 1, 40),
	credit_at_time(student, 1, 2, 40),
	credit_at_time(student, 2, 1, 40),
	credit_at_time(student, 2, 2, 0).

:- not goal.


