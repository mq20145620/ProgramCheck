#!/bin/sh

for x in $* ; do
    y=`basename $x .lp`
    /bin/echo -n "$y: " 
    clingo $x ../*.lp 2>&1 | tee $y.txt | egrep "SATIS|OPTIM"
done
