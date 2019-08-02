%
% BIT Core
%

course(bit).
course(bait).

course_required_credit(bit, 240).
course_required_credit(bait, 240).

core_unit(bit, 1, comp1000).
core_unit(bit, 2, comp1300).
core_unit(bit, 3, comp1350).
core_unit(bit, 4, comp2250).
core_unit(bit, 5, comp3850).

core_unit(bit, 6, comp1010).
core_unit(bit, 6, comp1150).
core_unit(bit, 6, comp1750).
core_unit(bit, 6, comp1800).
core_unit(bit, 6, comp1900).
core_unit(bit, 6, math1010).
core_unit(bit, 6, math1015).
core_unit(bit, 6, math1007).
core_unit(bit, 6, stat1170).
core_unit(bit, 6, stat1371).
core_unit(bit, 6, stat1378).

core_unit(bit, 7, comp2000).
core_unit(bit, 7, comp2010).
core_unit(bit, 7, comp2050).
core_unit(bit, 7, comp2100).
core_unit(bit, 7, comp2110).
core_unit(bit, 7, comp2150).
core_unit(bit, 7, comp2160).
core_unit(bit, 7, comp2200).
core_unit(bit, 7, comp2300).
core_unit(bit, 7, comp2310).
core_unit(bit, 7, comp2320).
core_unit(bit, 7, comp2350).
core_unit(bit, 7, comp2750).
core_unit(bit, 7, comp2800).
core_unit(bit, 7, comp2900).
core_unit(bit, 7, math2010).
core_unit(bit, 7, math2007).
core_unit(bit, 7, stat2114).
core_unit(bit, 7, stat2170).
core_unit(bit, 7, stat2173).
core_unit(bit, 7, stat2371).
core_unit(bit, 7, stat2372).
core_unit(bit, 7, stat2178).
core_unit(bit, 7, stat2579).

core_unit(bit, 8, comp3000).
core_unit(bit, 8, comp3010).
core_unit(bit, 8, comp3100).
core_unit(bit, 8, comp3120).
core_unit(bit, 8, comp3130).
core_unit(bit, 8, comp3160).
core_unit(bit, 8, comp3170).
core_unit(bit, 8, comp3210).
core_unit(bit, 8, comp3220).
core_unit(bit, 8, comp3250).
core_unit(bit, 8, comp3300).
core_unit(bit, 8, comp3310).
core_unit(bit, 8, comp3320).
core_unit(bit, 8, comp3760).
core_unit(bit, 8, comp3770).
core_unit(bit, 8, comp3780).
core_unit(bit, 8, comp3860).
core_unit(bit, 8, comp3900).

core_unit(bait, 1, comp1000).
core_unit(bait, 2, comp1300).
core_unit(bait, 3, comp1350).
core_unit(bait, 4, comp2250).
core_unit(bait, 5, comp3850).
core_unit(bait, 6, comp1900). 
core_unit(bait, 7, comp2900). 
core_unit(bait, 8, comp3900). 

%
% BIT Majors
%

major(bit, software_tech).
major(bit, game_dev).
major(bit, isba).
major(bit, cyber).
major(bit, web_and_mobile).
major(bit, data_science).

major(bait, software_tech).
major(bait, game_dev).
major(bait, isba).
major(bait, cyber).
major(bait, web_and_mobile).
major(bait, data_science).

%
% software tech
%

major_unit(software_tech, 1, comp1010).
major_unit(software_tech, 2, math1007).
major_unit(software_tech, 3, comp2000).
major_unit(software_tech, 4, comp2010).
major_unit(software_tech, 5, comp2100).
major_unit(software_tech, 6, comp3000).
major_unit(software_tech, 7, comp3100).

major_unit(software_tech, 8, comp3160).
major_unit(software_tech, 8, comp3170).
major_unit(software_tech, 8, comp3250).
major_unit(software_tech, 8, comp3300).
major_unit(software_tech, 8, comp3320).
major_unit(software_tech, 8, comp3780).
major_unit(software_tech, 8, comp3860).

%
% games
%

major_unit(game_dev, 1, comp1010).
major_unit(game_dev, 2, comp1150).
major_unit(game_dev, 3, comp2150).
major_unit(game_dev, 4, comp2160).
major_unit(game_dev, 5, meco2140).
major_unit(game_dev, 6, comp3150).
major_unit(game_dev, 7, comp3170).
major_unit(game_dev, 8, comp3180).
major_unit(game_dev, 8, meco3029).

%
% isba
%

major_unit(isba, 1, comp1750).
major_unit(isba, 2, accg100).
major_unit(isba, 3, comp2350).
major_unit(isba, 4, comp2750).
major_unit(isba, 5, accg250).
major_unit(isba, 6, comp3760).
major_unit(isba, 6, comp3770).
major_unit(isba, 7, accg355).
major_unit(isba, 8, accg358).

%
% cyber
%

major_unit(cyber, 1, math1007).
major_unit(cyber, 2, comp1010).
major_unit(cyber, 3, comp2300).
major_unit(cyber, 4, comp2310).
major_unit(cyber, 5, pict2001).
major_unit(cyber, 5, comp2100).
major_unit(cyber, 5, comp2110).
major_unit(cyber, 5, comp2200).
major_unit(cyber, 5, comp2320).
major_unit(cyber, 5, comp2350).
major_unit(cyber, 6, comp3300).
major_unit(cyber, 7, comp3320).
major_unit(cyber, 8, pict3011).
major_unit(cyber, 8, comp3100).
major_unit(cyber, 8, comp3250).
major_unit(cyber, 8, comp3310).

%
% web_and_mobile
%

major_unit(web_and_mobile, 1, comp1750).
major_unit(web_and_mobile, 2, comp1010).
major_unit(web_and_mobile, 3, comp2110).
major_unit(web_and_mobile, 4, comp2750).
major_unit(web_and_mobile, 5, meco2141).
major_unit(web_and_mobile, 6, comp3120).
major_unit(web_and_mobile, 7, comp3130).

major_unit(web_and_mobile, 8, comp3160).
major_unit(web_and_mobile, 8, comp3170).
major_unit(web_and_mobile, 8, comp3220).
major_unit(web_and_mobile, 8, comp3320).
major_unit(web_and_mobile, 8, comp3760).
major_unit(web_and_mobile, 8, comp3770).
major_unit(web_and_mobile, 8, comp3780).
major_unit(web_and_mobile, 8, comp3860).


%
% data_science
%

major_unit(data_science, 1, stat1170).
major_unit(data_science, 1, stat1371).
major_unit(data_science, 2, comp1010).
major_unit(data_science, 3, comp2200).
major_unit(data_science, 4, comp2350).
major_unit(data_science, 5, stat2170).
major_unit(data_science, 5, stat2371).
major_unit(data_science, 6, comp3210).
major_unit(data_science, 7, stat3102).
major_unit(data_science, 7, stat3110).
major_unit(data_science, 8, stat3175).
major_unit(data_science, 8, comp3220).


 