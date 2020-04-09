year(1..2).
semester(1..2).
units_per_semester(4).
start_semester(2).

student(student).
enrolled_course(student, bcyber).
enrolled_flexible_units(student, 4).

%
% Bachelor of IT to BCyberSec
%

specified_credit(student, comp1000).
specified_credit(student, comp1010).
specified_credit(student, comp1350).
specified_credit(student, math1007).
specified_credit(student, mgmt1020).
specified_credit(student, comp2110).
specified_credit(student, comp2250).
specified_credit(student, comp2310).

unspecified_credit(student, 30).

goal :-
    enrolled(student, core(bcyber, 1), credit, comp1000),
    enrolled(student, core(bcyber, 2), credit, comp1010),
    enrolled(student, core(bcyber, 5), credit, math1007),
    enrolled(student, core(bcyber, 4), credit, comp1350),
    enrolled(student, core(bcyber, 10), credit, comp2250),
    enrolled(student, core(bcyber, 8), credit, comp2110),
    enrolled(student, core(bcyber, 12), credit, comp2310),
	enrolled(student, flexible(1), credit, flex(1)),
	enrolled(student, flexible(2), credit, flex(2)),
	enrolled(student, flexible(3), credit, flex(3)),
	enrolled(student, flexible(4), credit, mgmt1020),

    enrolled(student, core(bcyber, 7), 1, 2, comp2100),
    enrolled(student, core(bcyber, 11), 1, 2, comp2300),
    enrolled(student, core(bcyber, 13), 1, 2, comp2320),
    enrolled(student, core(bcyber,6), 1, 2, stat1170),

    enrolled(student, core(bcyber,3), 1, 1, comp1300),
    enrolled(student, core(bcyber, 15), 1, 1, comp3300),
    enrolled(student, core(bcyber, 14), 1, 1, pict2001),
    enrolled(student, core(bcyber, 19), 1, 1, COMP3XXX),

    enrolled(student, core(bcyber, 17), 2, 2, comp3320),
    enrolled(student, core(bcyber, 9), 2, 2, comp2200),
    enrolled(student, core(bcyber, 16), 2, 2, comp3310),
    enrolled(student, core(bcyber, 20), 2, 2, COMP3YYY),

    enrolled(student, core(bcyber, 18), 2, 1, comp3850),

	credit_at_time(student,credit, 110),
	credit_at_time(student, 1, 1, 40),
	credit_at_time(student, 1, 2, 40),
	credit_at_time(student, 2, 1, 10),
   	credit_at_time(student, 2, 2, 40).

:- not goal.


