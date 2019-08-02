#!/bin/sh

for course in bit ; do
    for major1 in software_tech game_dev isba web_and_mobile cyber data_science ; do 
        for major2 in software_tech game_dev isba web_and_mobile cyber data_science ; do 
                cp test-$course-single-$major1-ft-s1.lp test-$course-double-$major1-$major2-ft-s1.lp
        done
    done
done

for course in bit ; do
    for major in software_tech game_dev isba web_and_mobile cyber data_science ; do 
        for mode in ft ; do 
            for semester in 1 ; do
                rm test-$course-double-$major-$major-$mode-s$semester.lp
            done
        done
    done
done