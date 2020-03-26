
%
% Units
%

unit(Unit) :-
    unit(Type, Unit, Level, Name).

unit_credit_points(Unit, 10) :-
    unit(Unit),
    not unit_credit_points_exception(Unit).

unit_level(1..4).

unit_level(Unit, Level) :-
    unit(Type, Unit, Level, Name).

maturity_credit_points(130).    % maturity prereq for 3000 level units
%maturity_credit_points(90).    % CHANGED: testing lowering the limit

prereq_credit_points(COMP3XXX, 1, Credit) :-
    unit(comp, COMP3XXX, 3, Name),
    maturity_credit_points(Credit),
    COMP3XXX != comp3850,
    COMP3XXX != comp3150,
    COMP3XXX != comp3900.

prereq_credit_points(comp3150, 1, 130).
prereq_credit_points(comp3850, 1, 130).
prereq_credit_points(comp3900, 1, 130).

%
% COMP units
%

unit(comp, comp1000, 1, "Introduction to Computer Programming").
unit_offered(comp1000,1).
unit_offered(comp1000,2).

unit(comp, comp1010, 1, "Fundamentals of Computer Science").
unit_offered(comp1010,1).
unit_offered(comp1010,2).
prereq_unit(comp1010, 1, comp1000).

% FIXME When is this unit offered?
unit(comp, comp1050, 1, "Introduction to Software Engineering").
unit_offered(comp1050,1).
unit_offered(comp1050,2).

unit(comp, comp1150, 1, "Introduction to Video Games").
unit_offered(comp1150,1).

unit(comp, comp1160, 1, "Modelling and Animation").
unit_offered(comp1160,2).

unit(comp, comp1300, 1, "Introduction to Cyber Security").
unit_offered(comp1300, 1).

unit(comp, comp1350, 1, "Introduction to Database Design and Management").
unit_offered(comp1350,2).

unit(comp, comp1750, 1, "Introduction to Business Information Systems").
unit_offered(comp1750,1).

unit(comp, comp1800, 1, "IT & Society").
unit_offered(comp1800,1).
unit_offered(comp1800,2).

unit(comp, comp1900, 1, "Computing Research I").
unit_offered(comp1900,1).
unit_offered(comp1900,2).
prereq_course(comp1900, bait).

unit(comp, comp2000, 2, "Object-Oriented Programming Practices").
unit_offered(comp2000,2).
prereq_unit(comp2000, 1, comp1010).

unit(comp, comp2010, 2, "Algorithms and Data Structures").
unit_offered(comp2010,1).
prereq_unit(comp2010, 1, comp1010).
prereq_unit(comp2010, 2, math1010).
prereq_unit(comp2010, 2, math1007).
prereq_unit(comp2010, 2, stat1250).
prereq_unit(comp2010, 2, stat1170).
prereq_unit(comp2010, 2, stat1371).

unit(comp, comp2050, 2, "Software Engineering").
unit_offered(comp2050,2).
prereq_unit(comp2050, 1, comp1010).

unit(comp, comp2100, 2, "Systems Programming").
unit_offered(comp2100,2).
prereq_unit(comp2100, 1, comp1010).

unit(comp, comp2110, 2, "Web and Mobile Development").
unit_offered(comp2110,1).
prereq_unit(comp2110, 1, comp1010).
prereq_unit(comp2110, 2, comp1350).

unit(comp, comp2150, 2, "Game Design").
unit_offered(comp2150,1).
prereq_unit(comp2150, 1, comp1150).

unit(comp, comp2160, 2, "Game Development").
unit_offered(comp2160,2).
prereq_unit(comp2160, 1, comp1150).
prereq_unit(comp2160, 2, comp1010).

unit(comp, comp2200, 2, "Data Science").
unit_offered(comp2200,2).
prereq_unit(comp2200, 1, comp1010).
prereq_unit(comp2200, 2, stat1170).
prereq_unit(comp2200, 2, stat1371).

unit(comp, comp2250, 2, "Data Communications").
unit_offered(comp2250,1).
unit_offered(comp2250,2).       % CHANGED: Second offering
prereq_unit(comp2250, 1, comp1000).
prereq_unit(comp2250, 1, comp1350).

unit(comp, comp2300, 2, "Applied Cryptography").
unit_offered(comp2300,1).
unit_offered(comp2300,2).
prereq_unit(comp2300, 1, comp1010).
prereq_unit(comp2300, 2, math1007).
prereq_unit(comp2300, 2, math2007).

unit(comp, comp2310, 2, "Digital Forensics").
unit_offered(comp2310,1).
prereq_unit(comp2310, 1, comp1010).
prereq_unit(comp2310, 2, comp1350).
coreq_unit(comp2310, 1, comp2250).

unit(comp, comp2320, 2, "Offensive Security").
unit_offered(comp2320, 1).
unit_offered(comp2320, 2).
coreq_unit(comp2320, 1, comp2110).
coreq_unit(comp2320, 2, comp2250).
coreq_unit(comp2320, 3, comp2300).

unit(comp, comp2350, 2, "Database Systems").
unit_offered(comp2350,2).
prereq_unit(comp2350, 1, comp1350).

unit(comp, comp2750, 2, "Applications Modelling and Development").
unit_offered(comp2750,1).
prereq_unit(comp2750, 1, comp1350).

unit(comp, comp2800, 2, "IT and the Future of Society").
unit_offered(comp2800,2).
prereq_unit(comp2800, 1, comp1800).

unit(comp, comp2900, 2, "Computing Research II").
unit_offered(comp2900,1).
unit_offered(comp2900,2).
prereq_unit(comp2900, 1, comp1900).
prereq_course(comp2900, bait).
prereq_credit_points(comp2900, 1, 80).

unit(comp, comp3000, 3, "Programming Languages").
unit_offered(comp3000,2).
prereq_unit(comp3000, 1, comp2000).
prereq_unit(comp3000, 1, comp2010).

unit(comp, comp3010, 3, "Algorithm Theory and Design").
unit_offered(comp3010,2).
prereq_unit(comp3010, 1, comp2010).
prereq_unit(comp3010, 2, math2007).

unit(comp, comp3100, 3, "Distributed Systems").
unit_offered(comp3100,1).
prereq_unit(comp3100, 1, comp2100).
prereq_unit(comp3100, 2, comp2250).

unit(comp, comp3120, 3, "E-Commerce Technology").
unit_offered(comp3120,2).
prereq_unit(comp3120, 1, comp2110).

unit(comp, comp3130, 3, "Mobile App Development").
unit_offered(comp3130, 1).
prereq_unit(comp3130, 1, comp2110).
prereq_unit(comp3130, 2, comp2750).

unit(comp, comp3150, 3, "Game Project A").
unit_offered(comp3150,1).
unit_offered(comp3150,2).
prereq_unit(comp3150, 1, comp2150).

unit(comp, comp3151, 3, "Game Project B").
unit_offered(comp3151,1).
unit_offered(comp3151,2).
prereq_unit(comp3151, 1, comp3150).

unit(comp, comp3160, 3, "Artificial Intelligence").
unit_offered(comp3160,2).
prereq_unit(comp3160, 1, comp2000).
prereq_unit(comp3160, 1, comp2010).
prereq_unit(comp3160, 1, comp2110).

unit(comp, comp3170, 3, "Computer Graphics").
unit_offered(comp3170,1).
% new prereqs for graphics
prereq_unit(comp3170, 1, comp2000).
prereq_unit(comp3170, 1, comp2010).
prereq_unit(comp3170, 1, comp2110).
prereq_unit(comp3170, 1, comp2160).

unit(comp, comp3180, 3, "Advanced Game Development").
unit_offered(comp3180,2).
prereq_unit(comp3180, 1, comp2160).

unit(comp, comp3210, 3, "Big Data").
unit_offered(comp3210,1).
prereq_unit(comp3210, 1, comp2200).
%coreq_unit(comp3210, 1, comp3850).     % CHANGED relaxed maturity requirements

unit(comp, comp3220, 3, "Document Processing and the Semantic Web").
unit_offered(comp3220,1).
prereq_unit(comp3220, 1, comp2110).
prereq_unit(comp3220, 1, comp2200).

unit(comp, comp3250, 3, "Computer Networks").
unit_offered(comp3250,2).
prereq_unit(comp3250, 1, comp2250).
prereq_unit(comp3250, 2, comp1010).
prereq_unit(comp3250, 3, math1007).
prereq_unit(comp3250, 3, math2007).

unit(comp, comp3300, 3, "Data Privacy and Information Security").
unit_offered(comp3300, 1).
prereq_unit(comp3300, 1, comp1300).
prereq_unit(comp3300, 2, comp2300).

unit(comp, comp3310, 3, "Secure App Development").
unit_offered(comp3310, 2).
prereq_unit(comp3310, 1, comp2100).
prereq_unit(comp3310, 2, comp2110).
coreq_unit(comp3310, 1, comp2320).

unit(comp, comp3320, 3, "Cyber Security in Practice").
unit_offered(comp3320, 1).
unit_offered(comp3320, 2).
prereq_unit(comp3320, 1, comp1300).
prereq_unit(comp3320, 2, comp1350).

unit(comp, comp3760, 3, "Enterprise Systems Integration").
unit_offered(comp3760,2).
prereq_unit(comp3760, 1, comp2350).
prereq_unit(comp3760, 1, comp2750).

unit(comp, comp3770, 3, "Management of IT Systems and Projects").
unit_offered(comp3770,1).
prereq_unit(comp3770, 1, comp2350).
prereq_unit(comp3770, 1, comp2750).
prereq_unit(comp3770, 1, comp2050).

unit(comp, comp3780, 3, "Technology Management").
unit_offered(comp3780,1).

unit(comp, comp3850, 3, "Computing Industry Project").
unit_offered(comp3850,1).
unit_offered(comp3850,2).
prereq_unit(comp3850, 1, comp2250).
prereq_unit(comp3850, 1, comp2110).
prereq_unit(comp3850, 1, comp2050).
prereq_unit(comp3850, 1, comp2200).
prereq_unit(comp3850, 1, comp2750).

unit(comp, comp3860, 3, "Special Topics in Computing and Information Systems").
unit_offered(comp3860,1).
unit_offered(comp3860,2).
prereq_permission(comp3860).

unit(comp, comp3870, 3, "Research Topic in Computing and Information Systems").
unit_offered(comp3870,1).
unit_offered(comp3870,2).
prereq_permission(comp3870).

unit(comp, comp3900, 3, "Computing Research III").
unit_offered(comp3900,1).
unit_offered(comp3900,2).
prereq_unit(comp3900, 1, comp2900).
prereq_course(comp3900, bait).

unit(comp, comp4000, 4, "Formal methods").
unit_offered(comp4000,2).
prereq_unit(comp4000, 1, comp3000).
prereq_unit(comp4000, 2, comp3010).

unit(comp, comp4050, 4, "Software Engineering Practices").
unit_offered(comp4050,2).
prereq_unit(comp4050, 1, comp2050).
prereq_unit(comp4050, 2, comp3010).
prereq_credit_points(comp4050, 1, 200).

unit(comp, comp4060, 4, "Advanced Software Engineering").
unit_offered(comp4060,1).
prereq_unit(comp4060, 1, comp2050).
prereq_unit(comp4060, 2, comp3010).
prereq_credit_points(comp4050, 1, 200).

unit(comp, comp4090, 4, "Software Engineering Research Thesis A").
unit_offered(comp4090,1).
unit_offered(comp4090,2).
prereq_credit_points(comp4090, 1, 230).
prereq_unit(comp4090, 1, comp3000).
prereq_unit(comp4090, 2, comp3010).
prereq_unit(comp4090, 3, comp3100).

unit(comp, comp4091, 4, "Software Engineering Research Thesis B").
unit_offered(comp4091,1).
unit_offered(comp4091,2).
prereq_credit_points(comp4091, 4, 20).
coreq_unit(comp4091, 1, comp4090).


% Old names
unit_old(comp1000, comp115).
unit_old(comp1010, comp125).
unit_old(comp1150, comp111).
unit_old(comp1300, comp107).
unit_old(comp1350, isys114).
unit_old(comp1750, isys104).
unit_old(comp1800, isys100).
unit_old(comp1900, comp188).
unit_old(comp2000, comp229).
unit_old(comp2010, comp225).
unit_old(comp2050, comp255).
unit_old(comp2100, comp202).
unit_old(comp2110, comp249).
unit_old(comp2150, comp260).
unit_old(comp2200, comp257).
unit_old(comp2250, comp247).
unit_old(comp2300, comp343).
unit_old(comp2350, isys224).
unit_old(comp2750, isys254).
unit_old(comp2800, isys200).
unit_old(comp3000, comp332).
unit_old(comp3010, comp333).
unit_old(comp3100, comp335).
unit_old(comp3120, comp344).
unit_old(comp3150, comp352).
unit_old(comp3160, comp329).
unit_old(comp3170, comp330).
unit_old(comp3210, comp336).
unit_old(comp3220, comp348).
unit_old(comp3250, comp347).
unit_old(comp3760, isys301).
unit_old(comp3770, isys302).
unit_old(comp3780, isys360).
unit_old(comp3850, isys358).
unit_old(comp3860, comp350).
unit_old(comp3870, comp353).
unit_old(comp3900, comp388).
unit_old(comp4050, comp430).
unit_old(comp4060, comp434).
unit_old(comp4090, comp410).
unit_old(comp4091, comp420).

%
% Flexible units
%

unit(flex, flex(1), 0, "Flexible 1").
unit(flex, flex(2), 0, "Flexible 2").
unit(flex, flex(3), 0, "Flexible 3").
unit(flex, flex(4), 0, "Flexible 4").
unit(flex, flex(5), 0, "Flexible 5").
unit(flex, flex(6), 0, "Flexible 6").
unit(flex, flex(7), 0, "Flexible 7").
unit(flex, flex(8), 0, "Flexible 8").

% offered at any level
unit_level(Unit, 1) :-
    flexible_unit(ID, Unit).

unit_offered(Unit, Semester) :-
    semester(Semester),
    unit(flex, Unit, Level, Name).

% force them to be taken in order
coreq_unit(flex(ID), 1, flex(ID-1)) :-
    unit(flex, flex(ID), Level, Name),
    ID > 1.

flexible_unit(ID, flex(ID)) :-
    unit(flex, flex(ID), Level, Name).

flexible_unit(Unit) :-
    flexible_unit(ID, Unit).

%
% Non-comp units
%

%
% accg
%

unit(accg, accg100, 1, "Accounting in Society").
unit_offered(accg100, 1).
unit_offered(accg100, 2).

unit(accg, accg250, 2, "Information Systems and Business Processes").
unit_offered(accg250, 1).
unit_offered(accg250, 2).
prereq_unit(accg250, 1, accg100).
prereq_unit(accg250, 1, accg106).
prereq_credit_points(accg250, 1, 30).

unit(accg, accg355, 3, "Information Systems for Management").
unit_offered(accg355, 2).
prereq_unit(accg355, 1, accg250).
prereq_unit(accg355, 1, accg251).
prereq_unit(accg355, 1, comp1750).
prereq_credit_points(accg355, 1, 130).

unit(accg, accg358, 3, "Information Systems Audit and Assurance").
unit_offered(accg358, 1).
prereq_unit(accg358, 1, accg250).
prereq_unit(accg358, 1, accg251).
prereq_credit_points(accg358, 1, 130).

unit(accg, accg3025, 3, "Cyber Security and Privacy").
unit_offered(accg3025, 2).
prereq_credit_points(accg3025, 1, 130).

unit(accg, accg3060, 3, "Cyber Security Governance and Ethics").
unit_offered(accg3060, 1). 
prereq_unit(accg3060, 1, accg250).
prereq_unit(accg3060, 1, pict2001).
prereq_unit(accg3060, 2, accg2065).
prereq_unit(accg3060, 2, pict2001).
prereq_credit_points(accg3060, 1, 130).

%
% busl
%

unit(busl, busl3015, 3, "Cyber-security and Privacy: Implications for Business & Law").
unit_offered(busl3015, 2).
prereq_credit_points(busl3015, 1, 130).

%
% engg
%

unit(engg, engg1000, 1, "Introduction to Engineering").
unit_offered(engg1000, 1).
unit_offered(engg1000, 2).

unit(engg, engg1050, 1, "Engineering Design").
unit_offered(engg1050, 1).
unit_offered(engg1050, 2).

unit(engg, engg2000, 2, "Engineering Practice").
unit_offered(engg2000, 2).
prereq_unit(engg2000, 1, engg1050).
prereq_unit(engg2000, 2, comp1050).

unit(engg, engg2050, 2, "Systems Thinking").
unit_offered(engg2050, 1).
prereq_unit(engg2050, 1, engg1050).

unit(engg, engg3000, 3, "Engineering Project Practice").
unit_offered(engg3000, 2).
prereq_unit(engg3000, 1, engg2000).

unit(engg, engg3050, 3, "Engineering Leadership").
unit_offered(engg3050, 1).
prereq_unit(engg3050, 1, engg2050).
prereq_unit(engg3050, 1, engg2000).

unit(engg, engg4000, 4, "Professional Practice").
unit_offered(engg4000, 1).
prereq_unit(engg4000, 1, engg3000).

%
% engl
%

unit(engl, engl1020, 1, "Approaches to English Literature").
unit_offered(engl1020, 1).

unit(engl, engl1021, 1, "Creative Writing 1").
unit_offered(engl1021, 2).
prereq_unit(engl1021, 1, engl1020).
prereq_unit(engl1021, 1, comp1150).

unit(engl, engl2033, 1, "Creative Writing 2").
unit_offered(engl2033, 1).
prereq_unit(engl1021, 1, engl1020).
prereq_unit(engl1021, 1, engl1021).

%
% fose
%

unit(fose, fose1025, 1, "FOSE Coding unit").
unit_offered(fose1025, 1).
unit_offered(fose1025, 2).

%
% math
%

unit(math, math1010, 1, "Mathematical Modelling 1A").
unit_offered(math1010, 2).

unit(math, math1015, 1, "Mathematical Modelling 1A (advanced)").
unit_offered(math1015, 1).
unit_offered(math1015, 2).

unit(math, math1007, 1, "Discrete Mathematics I").
unit_offered(math1007, 2).

unit(math, math2007, 2, "Discrete Mathematics II").
unit_offered(math2007, 1).
prereq_unit(math2007, 1, math1007).


%
% meco 
%

unit(meco, meco1025, 1, "Screenwriting: An Introduction").
1 { unit_offered(meco1025, S) : semester(S) } 1. % not sure when this is offered yet

% changed prereq to comp1150
unit(meco, meco2140, 2, "Cybercultures").
unit_offered(meco2140, 1).
prereq_unit(meco2140, 1, comp1150).

unit(meco, meco2141, 2, "Interactive Web Design").
unit_offered(meco2141, 2).
prereq_unit(meco2141, 1, meco2140).
prereq_unit(meco2141, 1, comp2110).

unit(meco, meco3029, 3, "Critical Games Studies").
unit_offered(meco3029, 2).
prereq_unit(meco3029, 1, meco2140).
prereq_credit_points(meco3029, 1, 130).

unit(meco, meco3045, 3, "Advanced Interactivity").
unit_offered(meco3045, 1).
prereq_unit(meco3045, 1, meco2141).
prereq_credit_points(meco3045, 1, 130).

unit(meco, meco3150, 3, "Media Internship").
unit_offered(meco3150, 1).
unit_offered(meco3150, 2).
coreq_unit(meco3150, 1, meco3029).

%
% pict
%

unit(pict, pict2001, 2, "Cybercrime").
unit_offered(pict2001, 1).
prereq_credit_points(pict2001, 1, 40).

unit(pict, pict3011, 3, "Cyber Security in Practice").
unit_offered(pict3011, 2).
prereq_credit_points(pict3011, 1, 130).

%
% stat 
%

unit(stat, stat1170, 1, "Introductory Statistics").
unit_offered(stat1170, 1).
unit_offered(stat1170, 2).
nccw(stat1170, stat1371).

unit(stat, stat1371, 1, "Statistical Data Analysis").
unit_offered(stat1371, 1).
nccw(stat1371, stat1170).

unit(stat, 5, 1, "Gambling, Sport and Medicine").
unit_offered(stat1175, 1).
unit_offered(stat1175, 2).

unit(stat, stat2170, 2, "Applied Statistics").
unit_offered(stat2170, 1).
unit_offered(stat2170, 2).
prereq_unit(stat2170, 1, stat1170).
prereq_unit(stat2170, 1, stat1371).
prereq_unit(stat2170, 1, stat1250).
nccw(stat2170, stat2371).

unit(stat, stat2371, 2, "Statistics I").
unit_offered(stat2371, 2).
prereq_unit(stat2371, 1, stat2372).
nccw(stat2371, stat2170).

unit(stat, stat2372, 2, "Probability").
unit_offered(stat2372, 1).
prereq_unit(stat2372, 1, stat1371).
prereq_unit(stat2372, 2, math133).
prereq_unit(stat2372, 2, math136).

unit(stat, stat3102, 3, "Graphics, Multivariate Methods and Data Mining").
unit_offered(stat3102, 2).
prereq_unit(stat3102, 1, stat2170).
prereq_unit(stat3102, 1, stat2371).
prereq_credit_points(stat3102, 1, 130).

unit(stat, stat3110, 3, "Statistical Inference").
unit_offered(stat3110, 1).
prereq_unit(stat3110, 1, stat2372).
prereq_unit(stat3110, 2, stat2173).
prereq_unit(stat3110, 2, comp2200).
prereq_credit_points(stat3110, 1, 130).

unit(stat, stat3175, 3, "Linear Models").
unit_offered(stat3175, 1).
prereq_unit(stat3175, 1, stat2170).
prereq_unit(stat3175, 1, stat2371).
prereq_credit_points(stat3175, 1, 130).

