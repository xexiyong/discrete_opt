enum hero;
enum spot;
array[hero, spot] of int: damage;

array[hero] of var spot: pos;
include "alldifferent.mzn";
alldifferent(pos);

var int: tdamages = sum(h in hero)(damage[h, pos[h]]);
solve maximize tdamages;

output [ show(h) ++ ": " ++ show(pos[h]) ++ "\n" | h in hero] ++ ["total damage: " ++ show(tdamages)];