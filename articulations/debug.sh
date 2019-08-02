#/bin/sh

clingo -c debug=on $1 ../*.lp | perl pretty.pl