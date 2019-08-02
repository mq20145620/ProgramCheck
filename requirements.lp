%
% Course requirements
%

% every requirement must be fulfilled by a unit

core_unit(Course, ID) :-
    core_unit(Course, ID, _).

1 { enrolled(Student, core(Course, ID), Time, Unit) : core_unit(Course, ID, Unit), time(Time) } 1 :-
    enrolled_course(Student, Course),
    core_unit(Course, ID).

major_unit(Major, ID) :-
    major_unit(Major, ID, Unit).

% for your first major you need to be enrolled in one unit per slot

1 { enrolled(Student, major(Major, ID), Time, Unit) : major_unit(Major, ID, Unit), time(Time) } 1 :-
    enrolled_major(Student, Major),
    major_unit(Major, ID).

% flexible units can be anything
flexible_unit_slot(Student, 1..N) :-
    enrolled_flexible_units(Student, N).

1 { enrolled(Student, flexible(ID), Time, Unit) : unit(Unit), time(Time) } 1 :-
    student(Student),
    flexible_unit_slot(Student, ID).

% Short versions to avoid unnecessary variables

enrolled(Student, Slot, Year, Semester, Unit) :-
    enrolled(Student, Slot, Time, Unit),
    scheduled_time(Time, Year, Semester).

enrolled(Student, Time, Unit) :-
    enrolled(Student, Slot, Time, Unit).

enrolled(Student, Unit) :-
    enrolled(Student, Time, Unit).


%
% Constraints
%

time(time(Year, Semester)) :-
    year(Year), 
    semester(Semester).

time(credit).

scheduled_time(time(Year, Semester)) :-
    year(Year), 
    semester(Semester).

scheduled_time(time(Year, Semester), Year, Semester) :-
    year(Year), 
    semester(Semester).

% credit is earlier than any scheduled time

earlier(credit, Time) :-
    scheduled_time(Time).

earlier(time(Y1, S1), time(Y2, S2)) :-
    year(Y1), semester(S1),
    year(Y2), semester(S2),
    Y1 < Y2.

earlier(time(Y, S1), time(Y, S2)) :-
    year(Y), 
    semester(S1),semester(S2),
    start_semester(1),
    S1 < S2.

earlier(time(Y, S1), time(Y, S2)) :-
    year(Y), 
    semester(S1),semester(S2),
    start_semester(2),
    S2 < S1.

earlier_or_equal(T1, T2) :-
    earlier(T1, T2).

earlier_or_equal(T, T) :-
    time(T).

%
% a unit can only be scheduled in 'credit' if it is specified credit or a flexible unit
%

not_specified_credit(Student, Unit) :-
    enrolled(Student, credit, Unit),
    not flexible_unit(Unit),
    not specified_credit(Student, Unit).    

%
% Flexible units in credit use unspecified credit
%

unspecified_flex_credits(Student, Unit, Credit) :-
    flexible_unit(Unit),
    enrolled(Student, credit, Unit),
    unit_credit_points(Unit, Credit).

total_unspecified_flex_credits(Student, TotalCredit) :-
    student(Student),
    TotalCredit = #sum { Credit,Unit : unspecified_flex_credits(Student, Unit, Credit) }.

insufficient_unspecified_credit(Student) :-
    total_unspecified_flex_credits(Student, Total),
    unspecified_credit(Student, UnspecifiedCredit),
    Total > UnspecifiedCredit.

has_unspecified_credit :-
    unspecified_credit(Student, UnspecifiedCredit).

insufficient_unspecified_credit(Student) :-
    total_unspecified_flex_credits(Student, Total),
    not has_unspecified_credit,
    Total > 0.

%
% each unit can only be enrolled once
%

taken_twice(Student, Unit) :- 
    enrolled(Student, Slot1, T1, Unit), 
    enrolled(Student, Slot2, T2, Unit), 
    Slot1 != Slot2.

%
% can't take a unit when it isn't unit_offered
%

wrong_semester(Student, Unit) :-
    enrolled(Student, Time, Unit), 
    scheduled_time(Time, Year, Semester),
    not unit_offered(Unit, Semester).

%
% limited number of units per semester
%

too_many_units(Student, Time, Count) :-
    student(Student),
    scheduled_time(Time),
    units_per_semester(N),
    number_of_units(Student, Time, Count),
    Count > N.

number_of_units(Student, Time, Count) :-
    student(Student),
    time(Time),
    Count = #count { Unit : enrolled(Student, Time, Unit) }.

%
% must satisfying prereqs
%

satisfied_prereq_unit(Student, Unit, Prereq, Time) :-   
    student(Student),
    time(Time),
    prereq_unit(Unit, Prereq, UPre),
    enrolled(Student, T1, UPre),
    earlier(T1, Time).

unsatisfied_prereq_unit(Student, Unit, Prereq) :-
    enrolled(Student, Time, Unit),
    scheduled_time(Time),
    prereq_unit(Unit, Prereq, _),
    not satisfied_prereq_unit(Student, Unit, Prereq, Time).


%
% must satisfy coreqs
%

satisfied_coreq_unit(Student, Unit, Coreq, Time) :-    
    student(Student),
    time(Time),
    coreq_unit(Unit, Coreq, UCo),
    enrolled(Student, T1, UCo),
    earlier_or_equal(T1, Time).

unsatisfied_coreq_unit(Student, Unit, Coreq) :-
    enrolled(Student, Time, Unit),
    scheduled_time(Time),
    coreq_unit(Unit, Coreq, _),
    not satisfied_coreq_unit(Student, Unit, Coreq, Time).

%
% credit-point prereqs
%

credit_points(Student, MinLevel, Time, Unit, Credit) :-
    unit_level(MinLevel), time(Time),
    enrolled(Student, T1, Unit), 
    earlier(T1, Time), 
    unit_level(Unit, Level), 
    Level >= MinLevel, 
    unit_credit_points(Unit, Credit).

credit_points(Student, MinLevel, Time, TotalCredit) :-
    student(Student), unit_level(MinLevel), time(Time),
    TotalCredit = #sum { Credit,Unit : credit_points(Student, MinLevel, Time, Unit, Credit) }.

satisfied_credit_points(Student, Unit, Time) :-
    student(Student), time(Time),
    prereq_credit_points(Unit, Level, RequiredCredit),
    credit_points(Student, Level, Time, TotalCredit),
    TotalCredit >= RequiredCredit.

unsatisfied_credit_points(Student, Unit) :-
    enrolled(Student, Time, Unit), 
    scheduled_time(Time),
    prereq_credit_points(Unit, Level, RequiredCredit),
    not satisfied_credit_points(Student, Unit, Time).

%
% Degree prereqs
%

unsatisfied_course(Student, Unit) :-
    enrolled(Student, Unit),
    prereq_course(Unit, Degree),
    not enrolled_course(Student, Degree).

%
% Special permission
%

unsatisfied_permission(Student, Unit) :-
    enrolled(Student, Unit),
    prereq_permission(Unit),
    not permission(Student, Unit).

%
% Incompatible units
%

incompatible(Student, U1, U2) :-
    nccw(U1, U2),
    enrolled(Student, U1),
    enrolled(Student, U2).

%
% Double major
%

% new rule: every slot in the second major must be satisfied somewhere

satisfied_double_major_slot(Student, Major, ID) :-
    major_unit(Major, ID, Unit),
    enrolled(Student, Unit).

ineligible_double_major(Student, Major, ID) :- 
    enrolled_double_major(Student, Major),
    major_unit(Major, ID),
    not satisfied_double_major_slot(Student, Major, ID).

%
% Flexible slots should be filled in order to remove symmetries.
%

flexible_out_of_order(Student, F1, F2) :-
    enrolled(Student, flexible(F1), Time1, _),
    enrolled(Student, flexible(F2), Time2, _),
    F2 > F1,
    earlier(Time2, Time1).

%
% Full-time/part-time requirements
%

credit_at_time(Student, Time, Total) :-
    student(Student), time(Time),
    Total = #sum { Credit,Unit : enrolled(Student, Time, Unit), unit_credit_points(Unit, Credit) }.

credit_at_time(Student, Year, Semester, Total) :-
    scheduled_time(Time, Year, Semester),
    credit_at_time(Student, Time, Total).


%
% All constraints (collected to allow them to be turned on and off)
%

constraint_failed(not_specified_credit(S,U)) :- not_specified_credit(S,U).
constraint_failed(insufficient_unspecified_credit(S)) :- insufficient_unspecified_credit(S).

constraint_failed(unsatisfied_prereq_unit(S,U,Pre)) :- unsatisfied_prereq_unit(S,U,Pre).
constraint_failed(unsatisfied_coreq_unit(S,U,Co)) :- unsatisfied_coreq_unit(S,U,Co).
constraint_failed(unsatisfied_credit_points(S,U)) :- unsatisfied_credit_points(S,U).
constraint_failed(unsatisfied_permission(S,U)) :- unsatisfied_permission(S,U).
constraint_failed(unsatisfied_course(S,U)) :- unsatisfied_course(S,U).
constraint_failed(incompatible(S, U1, U2)) :- incompatible(S, U1, U2).

constraint_failed(wrong_semester(S,U)) :- wrong_semester(S,U).
constraint_failed(too_many_units(Student, Time, Count)) :- too_many_units(Student, Time, Count).
constraint_failed(taken_twice(Student, Unit)) :- taken_twice(Student, Unit).

constraint_failed(ineligible_double_major(Student, Major, ID)) :- ineligible_double_major(Student, Major, ID).
constraint_failed(flexible_out_of_order(Student, F1, F2)) :- flexible_out_of_order(Student, F1, F2).

:- constraint_failed(Constraint), not debug(on).

debug(debug). % set debug consta

#minimize { 1,Constraint : constraint_failed(Constraint) }.

%
% prefer solutions with more unspecified units
%

#maximize { ID : enrolled(Student, flex(ID)) }.

%
% prefer solutions with units in the years corresponding to their levels
%

wrong_year(Student, Unit) :-
    enrolled(Student, time(Year, Semester), Unit),
    not unit_level(Unit, Year). 

%#minimize { 1,Unit : wrong_year(Student, Unit) }.

#show.
#show enrolled/4.
#show constraint_failed/1.
#show credit_at_time/3.
