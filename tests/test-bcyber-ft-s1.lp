year(1..3).
semester(1..2).

student(student).
enrolled_course(student, bcyber).
enrolled_flexible_units(student, 4).
units_per_semester(4).
start_semester(1).

goal :- 
    enrolled(student, core(bcyber,1),1,1,comp1000),
    enrolled(student, core(bcyber,3),1,1,comp1300),
    enrolled(student, core(bcyber,6),1,1,stat1170),
	enrolled(student, flexible(1),1,1,flex(1)),

    enrolled(student, core(bcyber, 2), 1, 2, comp1010),
    enrolled(student, core(bcyber, 4), 1, 2, comp1350),
    enrolled(student, core(bcyber, 5), 1, 2, math1007),
	enrolled(student,flexible(2),1,2,flex(2)),

    enrolled(student, core(bcyber, 11), 2, 1, comp2300),
    enrolled(student, core(bcyber, 8), 2, 1, comp2110),
    enrolled(student, core(bcyber, 10), 2, 1, comp2250),
    enrolled(student, core(bcyber, 14), 2, 1, pict2001),

    enrolled(student, core(bcyber, 7), 2, 2, comp2100),
    enrolled(student, core(bcyber, 9), 2, 2, comp2200),
    enrolled(student, core(bcyber, 13), 2, 2, comp2320),
	enrolled(student,flexible(3),2,2,flex(3)),

    enrolled(student, core(bcyber, 12), 3, 1, comp2310),
    enrolled(student, core(bcyber, 15), 3, 1, comp3300),
    enrolled(student, core(bcyber, 17), 3, 1, comp3320),
    enrolled(student, core(bcyber, 19), 3, 1, comp3100),

    enrolled(student, core(bcyber, 16), 3, 2, comp3310),
    enrolled(student, core(bcyber, 18), 3, 2, comp3850),
    enrolled(student, core(bcyber, 20), 3, 2, busl3015),
	enrolled(student,flexible(4),3,2,flex(4)).

:- not goal.

