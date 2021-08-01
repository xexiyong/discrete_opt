enum moves;
int: timeBound;
array[moves] of int: power;
array[moves] of int: duration;

% array[moves] of bool: occur;
var set of moves: occur;

% constraint forall(i in moves)(occur[i] >= 0);
% constraint forall(i in moves)(occur[i] <= 1);
% constraint sum(i in moves)(duration[i] * bool2int(occur[i])) <= timeBound;
% constraint sum(i in moves)(duration[i] * (i in occur)) <= timeBound;
constraint sum(i in occur)(duration[i]) <= timeBound;

% solve maximize sum(i in moves)(bool2int(occur[i])*power[i]);
% solve maximize sum(i in moves)(power[i] * (i in occur));
solve maximize sum(i in occur)(power[i]);
