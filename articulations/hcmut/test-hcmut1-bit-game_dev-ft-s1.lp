year(1..2).
semester(1..2).
units_per_semester(4).
start_semester(1).

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

	enrolled(student,major(game_dev,2),time(1,1),comp1150),
	enrolled(student,flexible(6),time(1,1),engl1020),
	enrolled(student,flexible(7),time(1,1),pict2001),
	enrolled(student,flexible(8),time(1,1),comp1750),
	credit_at_time(student,1,1,40),
	
    enrolled(student,core(bit,3),time(1,2),comp1350),
	enrolled(student,core(bit,4),time(1,2),comp2250),
	enrolled(student,core(bit,7),time(1,2),COMP2XXX),
	enrolled(student,major(game_dev,4),time(1,2),comp2160),
	credit_at_time(student,1,2,40),
	
    enrolled(student,core(bit,2),time(2,1),comp1300),
	enrolled(student,major(game_dev,3),time(2,1),comp2150),
	enrolled(student,major(game_dev,5),time(2,1),meco2140),
	enrolled(student,major(game_dev,7),time(2,1),comp3170),
	credit_at_time(student,2,1,40),
	
    enrolled(student,core(bit,5),time(2,2),comp3850),
	enrolled(student,core(bit,8),time(2,2),COMP3XXX),
	enrolled(student,major(game_dev,6),time(2,2),comp3150),
	enrolled(student,major(game_dev,8),time(2,2),meco3029),
	credit_at_time(student,2,2,40).

:- not goal.


