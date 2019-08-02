year(1..2).
semester(1..2).
units_per_semester(4).
start_semester(2).

student(student).
enrolled_course(student, bit).
enrolled_major(student, cyber).
enrolled_flexible_units(student, 8).

%
% Major in Computer Science and Technology
%

specified_credit(student, stat1170).
specified_credit(student, comp1000).
specified_credit(student, comp1010).
specified_credit(student, comp1750).
specified_credit(student, math1007).
specified_credit(student, comp2250).
specified_credit(student, accg100).
specified_credit(student, comp2010).

goal :-
    enrolled(student, core(bit,1), credit, comp1000),
    enrolled(student, core(bit,6), credit, stat1170),
    enrolled(student, major(cyber, 2), credit, comp1010),
    enrolled(student, major(cyber, 1), credit, math1007),    
    enrolled(student, core(bit,7), credit, comp2010),
    enrolled(student, core(bit,4), credit, comp2250),
    enrolled(student, flexible(1), credit, accg100),
    enrolled(student, flexible(2), credit, comp1750),
    credit_at_time(student, credit, 80),

    enrolled(student, core(bit,3), 1, 2, comp1350),
    enrolled(student, flexible(3), 1, 2, flex(1)),
    enrolled(student, flexible(4), 1, 2, flex(2)),
    enrolled(student, flexible(5), 1, 2, flex(3)),
    credit_at_time(student, 1, 2, 40),    

    enrolled(student, core(bit,2), 1, 1, comp1300),
    enrolled(student, major(cyber, 4), 1, 1, comp2310),
    enrolled(student, flexible(6), 1, 1, flex(4)),
    enrolled(student, flexible(7), 1, 1, flex(5)),
    credit_at_time(student, 1, 1, 40),    

    enrolled(student, major(cyber, 3), 2, 2, comp2300),
    enrolled(student, major(cyber, 5), 2, 2, COMP2XXX),     % Option
    enrolled(student, major(cyber, 7), 2, 2, comp3320),
    enrolled(student, core(bit,8), 2, 2, COMP3XXX),         % Option
    credit_at_time(student, 2, 2, 40),    

    enrolled(student, major(cyber, 6), 2, 1, comp3300),
    enrolled(student, core(bit,5), 2, 1, comp3850),
    enrolled(student, major(cyber, 8), 2, 1, COMP3YYY),     % Option
    enrolled(student, flexible(8), 2, 1, flex(6)),
    credit_at_time(student, 2, 1, 40).    

:- not goal.

