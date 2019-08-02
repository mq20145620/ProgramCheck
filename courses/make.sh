#!/bin/sh

for course in bit bait ; do
    for major in software_tech game_dev isba web_and_mobile cyber data_science ; do 
        for mode in ft pt ; do 
            for semester in 1 2 ; do
                cat > $course-$major-$mode-s$semester.lp << END
year(1..3) :- enrolled_mode(ft).
year(1..6) :- enrolled_mode(pt).
semester(1..2).

enrolled_course($course).
enrolled_major($major).
enrolled_flexible_units(8).
enrolled_mode($mode).
units_per_semester(4) :- enrolled_mode(ft).
units_per_semester(2) :- enrolled_mode(pt).
start_semester($semester).
END
            done
        done
    done
done
