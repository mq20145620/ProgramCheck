#!/bin/sh

for course in bit bait ; do
    for major1 in software_tech game_dev isba web_and_mobile cyber data_science ; do 
        for major2 in software_tech game_dev isba web_and_mobile cyber data_science ; do 
            for mode in ft ; do 
             for semester in 1 2 ; do
                cat > $course-double-$major1-$major2-$mode-s$semester.lp << END
year(1..3).
semester(1..2).
units_per_semester(4).
start_semester($semester).

student(student).
enrolled_course(student, $course).
enrolled_major(student, $major1).
enrolled_double_major(student, $major2).
enrolled_flexible_units(student, 8).
END
                done
            done
        done
    done
done

for course in bit bait ; do
    for major in software_tech game_dev isba web_and_mobile cyber data_science ; do 
        for mode in ft pt ; do 
            for semester in 1 2 ; do
                rm $course-double-$major-$major-$mode-s$semester.lp
            done
        done
    done
done