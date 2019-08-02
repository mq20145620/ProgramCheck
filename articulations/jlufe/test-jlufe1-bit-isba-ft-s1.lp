year(1..2).
semester(1..2).
units_per_semester(4).
start_semester(1).

student(student).
enrolled_course(student, bit).
enrolled_major(student, isba).
enrolled_flexible_units(student, 8).

%
% Major in Computer Science and Technology
%

specified_credit(student, comp1000).
specified_credit(student, comp1010).
specified_credit(student, comp2250).
specified_credit(student, comp2010).

unspecified_credit(student, 40).

goal :-
    enrolled(student, core(bit,1),credit,comp1000),
    enrolled(student, core(bit,6),credit,comp1010),
    enrolled(student, core(bit,7),credit,comp2010),
    enrolled(student, core(bit,4),credit,comp2250),
    enrolled(student, flexible(1),credit,flex(1)),
    enrolled(student, flexible(2),credit,flex(2)),
    enrolled(student, flexible(3),credit,flex(3)),  
    enrolled(student, flexible(4),credit,flex(4)),
	credit_at_time(student,credit,80),

    enrolled(student, major(isba,2),1,1,accg100),
    enrolled(student, core(bit,2),1,1,comp1300),
    enrolled(student, major(isba,1),1,1,comp1750),
    enrolled(student, flexible(5),1,1,flex(5)),

    enrolled(student, major(isba,5),1,2,accg250),
    enrolled(student, core(bit,3),1,2,comp1350),
    enrolled(student, flexible(6),1,2,flex(6)),
    enrolled(student, flexible(7),1,2,flex(7)),

    enrolled(student, major(isba,4),2,1,comp2750),
    enrolled(student, major(isba,8),2,1,accg358),
    enrolled(student, core(bit,8),2,1,COMP3XXX),
    enrolled(student, flexible(8),2,1,flex(8)),

    enrolled(student, major(isba,7),2,2,accg355),
    enrolled(student, core(bit,5),2,2,comp3850),
    enrolled(student, major(isba,3),2,2,comp2350),
    enrolled(student, major(isba,6),2,2,COMP3YYY).





:- not goal.


