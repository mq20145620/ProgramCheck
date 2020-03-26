year(1..2).
semester(1..2).
units_per_semester(4).
start_semester(2).

student(student).
enrolled_course(student, bcyber).
enrolled_flexible_units(student, 4).

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
    enrolled(student, core(bcyber,1), credit, comp1000),
    enrolled(student, core(bcyber, 2), credit, comp1010),
    enrolled(student, core(bcyber, 5), credit, math1007),
    enrolled(student, core(bcyber, 10), credit, comp2250),
    enrolled(student, core(bcyber, 4), credit, comp1350),
	enrolled(student, flexible(1), credit, flex(1)),
	enrolled(student, flexible(2), credit, flex(2)),
	enrolled(student, flexible(3), credit, flex(3)),
	credit_at_time(student,credit,80),

    enrolled(student, core(bcyber, 7), 1, 2, comp2100),
    enrolled(student, core(bcyber, 11), 1, 2, comp2300),
    enrolled(student, core(bcyber, 6), 1, 2, stat1170),
	enrolled(student, flexible(4), 1, 2, flex(4)),
	credit_at_time(student, 1, 2, 40),

    enrolled(student, core(bcyber,3), 1, 1,comp1300),
    enrolled(student, core(bcyber, 8), 1, 1, comp2110),
    enrolled(student, core(bcyber, 12), 1, 1, comp2310),
    enrolled(student, core(bcyber, 13), 1, 1, comp2320),
	credit_at_time(student, 1, 1, 40),

    enrolled(student, core(bcyber, 15), 2, 2, comp3300),
    enrolled(student, core(bcyber, 9), 2, 2, comp2200),
    enrolled(student, core(bcyber, 19), 2, 2, COMP3XXX),
    enrolled(student, core(bcyber, 20), 2, 2, COMP3YYY),
	credit_at_time(student, 2, 1, 40),

    enrolled(student, core(bcyber, 16), 2, 1, comp3310),
    enrolled(student, core(bcyber, 17), 2, 1, comp3320),
    enrolled(student, core(bcyber, 18), 2, 1, comp3850),
    enrolled(student, core(bcyber, 14), 2, 1, pict2001),
   	credit_at_time(student, 2, 2, 40).

:- not goal.


