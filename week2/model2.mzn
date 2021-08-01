int: nSpots;

set of int: spot = 1..nSpots;
array[spot] of int: damage;

enum symb;
array[symb] of set of spot: group;


var set of spot: attacks;

constraint forall(s in symb)(card(attacks intersect group[s]) <= 1);
% constraint card(attacks) = size;

var int: totaldamages = sum(p in attacks)(damage[p]);

solve maximize totaldamages;

