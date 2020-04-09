year(1..2).
semester(1..2).
units_per_semester(4).
start_semester(2).

student(student).
enrolled_course(student, bit).
enrolled_major(student, isba).
enrolled_flexible_units(student, 8).

%
% Diploma of IT to BCyberSec
%

specified_credit(student, comp1000).
specified_credit(student, comp1010).
specified_credit(student, math1007).
specified_credit(student, comp2250).
specified_credit(student, comp1350).

unspecified_credit(student, 30).

goal :-
    enrolled(student, core(bit,1), credit, comp1000),
    enrolled(student, core(bit,6), credit, comp1010),
    enrolled(student, core(bit,4), credit, comp2250),
    enrolled(student, core(bit,3), credit, comp1350),
    enrolled(student, flexible(1), credit, math1007),
    enrolled(student, flexible(2), credit, flex(2)),
    enrolled(student, flexible(3), credit, flex(3)),
    enrolled(student, flexible(4), credit, flex(4)),
	credit_at_time(student,credit,80),

    enrolled(student, major(isba,2), 1, 2, accg100),
    enrolled(student, major(isba,3), 1, 2, comp2350),
    enrolled(student, core(bit,7), 1, 2, COMP2XXX),
    enrolled(student, flexible(5), 1, 2, flex(5)),

    enrolled(student, major(isba,5), 1, 1, accg250),
    enrolled(student, core(bit,2), 1, 1, comp1300),
    enrolled(student, major(isba,1), 1, 1, comp1750),
    enrolled(student, major(isba,4), 1, 1, comp2750),

    enrolled(student, major(isba,7), 2, 2, accg355),
    enrolled(student, core(bit,8), 2, 2, COMP3XXX),
    enrolled(student, flexible(6), 2, 2, flex(6)),
    enrolled(student, flexible(7), 2, 2, flex(7)),

    enrolled(student, core(bit,5), 2, 1, comp3850),
    enrolled(student, major(isba,8), 2, 1, accg358),
    enrolled(student, major(isba,6), 2, 1, COMP3YYY),
    enrolled(student, flexible(8), 2, 1, flex(8)),

    credit_at_time(student, 1, 1, 40),
	credit_at_time(student, 1, 2, 40),
	credit_at_time(student, 2, 1, 40),
	credit_at_time(student, 2, 2, 40).

:- not goal.


