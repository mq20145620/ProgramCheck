year(1..3).
semester(1..2).
units_per_semester(4).
start_semester(1).

student(student).
enrolled_course(student, bit).
enrolled_major(student, game_dev).
enrolled_flexible_units(student, 8).

%
% BIT to BIT Games
%

specified_credit(student, comp1000).
specified_credit(student, comp1010).
specified_credit(student, comp1350).
specified_credit(student, math1007).
specified_credit(student, mgmt1020).
specified_credit(student, comp2250).
specified_credit(student, comp2750).
specified_credit(student, meco2140).
specified_credit(student, meco2141).

unspecified_credit(student, 30).

goal :-
    enrolled(student, core(bit,1), credit, comp1000),
    enrolled(student, core(bit,3), credit, comp1350),
    enrolled(student, major(game_dev,1), credit,comp1010),
    enrolled(student, core(bit,6), credit, math1007),
    enrolled(student, core(bit,4), credit, comp2250),
    enrolled(student, core(bit,7), credit, comp2750),
    enrolled(student, major(game_dev,5), credit, meco2140),
    enrolled(student, flexible(1), credit, mgmt1020),
    enrolled(student, flexible(2), credit, meco2141),
    enrolled(student, flexible(3), credit, flex(3)),
    enrolled(student, flexible(4), credit, flex(4)),
    enrolled(student, flexible(5), credit, flex(5)),
	credit_at_time(student,credit,120),

    enrolled(student, core(bit,2), 1, 1, comp1300),
    enrolled(student, flexible(6), 1, 1, flex(6)),
 
    enrolled(student, major(game_dev,2), 1, 2, comp1150),
    enrolled(student, flexible(7), 1, 2, flex(7)),

    enrolled(student, major(game_dev,3), 2, 1, comp2150),
    enrolled(student, flexible(8), 2, 1, flex(8)),

    enrolled(student, major(game_dev,4), 2, 2, comp2160),
    enrolled(student, major(game_dev,6), 2, 2, comp3150),
    enrolled(student, major(game_dev,8), 2, 2, COMP3YYY),

    enrolled(student, core(bit,5), 3, 1, comp3850),
    enrolled(student, major(game_dev,7), 3, 1, comp3170),
    enrolled(student, core(bit,8), 3, 1, COMP3XXX),

    credit_at_time(student, 1, 1, 20),
	credit_at_time(student, 1, 2, 20),
	credit_at_time(student, 2, 1, 20),
	credit_at_time(student, 2, 2, 30),
	credit_at_time(student, 3, 1, 0),
	credit_at_time(student, 3, 2, 0).


:- not goal.


