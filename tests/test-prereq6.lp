year(1).
semester(1..2).

required(comp1000).
required(comp1010).

1 { enrolled(Y,S,Unit) : year(Y), semester(S) } 1 :- required(Unit).
    
:- enrolled(Y1, S1, Unit), enrolled(Y2, S2, Unit), pair(Y1, S1) != pair(Y2, S2).

:- unsatisfied_prereq(Unit, P).

#show.
#show unsatisfied_prereq/2.
#show enrolled/3.