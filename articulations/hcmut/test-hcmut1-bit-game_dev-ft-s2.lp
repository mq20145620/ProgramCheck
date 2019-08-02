year(1..2).
semester(1..2).
units_per_semester(4).
start_semester(2).

student(student).
enrolled_course(student, bit).
enrolled_major(student, game_dev).
enrolled_flexible_units(student, 8).

%
% B Computer Engineering
%

specified_credit(student, comp1000).
specified_credit(student, comp1010).
specified_credit(student, math1007).
specified_credit(student, comp2010).
specified_credit(student, stat1170).

unspecified_credit(student, 30).

goal :-
    enrolled(student, core(bit,1),credit,comp1000),
    enrolled(student, core(bit,6),credit,math1007),
	enrolled(student, major(game_dev,1),credit,comp1010),
    enrolled(student, flexible(1),credit,stat1170),
    enrolled(student, flexible(2),credit,flex(1)),
    enrolled(student, flexible(3),credit,flex(2)),
    enrolled(student, flexible(4),credit,flex(3)),
    enrolled(student, flexible(5),credit,comp2010),
	credit_at_time(student,credit,80),

	enrolled(student,core(bit,3),time(1,2),comp1350),
	enrolled(student,core(bit,4),time(1,2),comp2250),
	enrolled(student,flexible(6),time(1,2),flex(4)),

	enrolled(student,core(bit,2),time(1,1),comp1300),
	enrolled(student,major(game_dev,2),time(1,1),comp1150),
	enrolled(student,flexible(7),time(1,1),flex(5)),

	enrolled(student,core(bit,7),time(2,2),COMP2XXX),
	enrolled(student,major(game_dev,4),time(2,2),comp2160),
	enrolled(student,flexible(8),time(2,2),flex(6)),

	enrolled(student,core(bit,8),time(2,1),COMP3XXX),
	enrolled(student,major(game_dev,3),time(2,1),comp2150),
	enrolled(student,major(game_dev,5),time(2,1),meco2140),
	enrolled(student,major(game_dev,7),time(2,1),comp3170),

	enrolled(student,core(bit,5),time(3,2),comp3850),
	enrolled(student,major(game_dev,6),time(3,2),comp3150),
	enrolled(student,major(game_dev,8),time(3,2),comp3180),

	credit_at_time(student,3,1,0).
	


:- not goal.
:- credit_at_time(student,T,Credit), earlier(T, time(3,1)), Credit < 30.

