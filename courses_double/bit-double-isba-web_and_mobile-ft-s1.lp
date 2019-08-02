year(1..3).
semester(1..2).
units_per_semester(4).
start_semester(1).

student(student).
enrolled_course(student, bit).
enrolled_major(student, isba).
enrolled_double_major(student, web_and_mobile).
enrolled_flexible_units(student, 8).
