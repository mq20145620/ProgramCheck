year(1..3) :- enrolled_mode(ft).
year(1..6) :- enrolled_mode(pt).
semester(1..2).

enrolled_course(bit).
enrolled_major(web_and_mobile).
enrolled_flexible_units(8).
enrolled_mode(pt).
units_per_semester(4) :- enrolled_mode(ft).
units_per_semester(2) :- enrolled_mode(pt).
start_semester(1).

#show.
#show enrolled/4.
#show unfilled_major_slot/2.
#show insufficient_major_units/1.
#show too_many_units/3.
#show unsatisfied_prereq_unit/1.
#show unsatisfied_coreq_unit/1.
#show taken_twice/1.
#show wrong_semester/1.
#show unsatisfied_credit_points/1.
#show unsatisfied_course/1.
#show unsatisfied_permission/1.
