year(1..2).
semester(1..2).
units_per_semester(4).
start_semester(1).

student(student).
enrolled_course(student, bit).
enrolled_major(student, cyber).
enrolled_flexible_units(student, 8).


%
% BIT to BIT Cyber
%

specified_credit(student, comp1000).
specified_credit(student, comp1010).
specified_credit(student, comp1350).
specified_credit(student, math1007).
specified_credit(student, mgmt1020).
specified_credit(student, comp2250).
%specified_credit(student, comp2310).   
%specified_credit(student, comp2350).
specified_credit(student, comp2750).

unspecified_credit(student, 50).

goal :-
    enrolled(student, core(bit,1), credit, comp1000),
    enrolled(student, major(cyber, 2), credit, comp1010),
    enrolled(student, major(cyber, 1), credit, math1007),
    enrolled(student, core(bit,3), credit, comp1350),
    enrolled(student, core(bit,4), credit, comp2250),
    enrolled(student, core(bit,7), credit, comp2750),
    enrolled(student, flexible(1), credit, flex(1)),
    enrolled(student, flexible(2), credit, flex(2)),
    enrolled(student, flexible(3), credit, flex(3)),
	enrolled(student, flexible(4), credit, mgmt1020),
    enrolled(student, flexible(5), credit, flex(5)),
    enrolled(student, flexible(6), credit, flex(6)),
	credit_at_time(student,credit, 120),

    enrolled(student, core(bit,2), 1, 1, comp1300),
    enrolled(student, major(cyber, 3), 1, 1, comp2300),
    enrolled(student, core(bit,6), 1, 1, COMP1XXX),
    enrolled(student, major(cyber, 4), 1, 1, comp2310),

    enrolled(student, major(cyber, 7), 1, 2, comp3320),
    enrolled(student, major(cyber, 8), 1, 2, COMP3XXX),
    enrolled(student, major(cyber, 5), 1, 2, comp2350),
    enrolled(student, flexible(7), 1, 2, flex(7)),
    
    enrolled(student, core(bit,5), 2, 1, comp3850),
    enrolled(student, major(cyber, 6), 2, 1, comp3300),
    enrolled(student, core(bit,8), 2, 1, COMP3YYY),
    enrolled(student, flexible(8), 2, 1, flex(8)),

	credit_at_time(student, 1, 1, 40),
	credit_at_time(student, 1, 2, 40),
	credit_at_time(student, 2, 1, 40).

:- not goal.


