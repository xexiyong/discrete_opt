
int: nSpots;
set of int: spot = 1..nSpots;
array[spot] of int: damage;

enum symb;
array[symb] of set of spot: group;
int: size;

array[1..size] of var spot: attacks;

constraint forall(i in 1..size-1)(attacks[i] < attacks[i+1]);
constraint forall(s in symb)(sum(i in 1..size)(attacks[i] in group[s]) <= 1);

var int: totaldamages = sum(i in 1..size)(damage[attacks[i]]);

solve maximize totaldamages;
