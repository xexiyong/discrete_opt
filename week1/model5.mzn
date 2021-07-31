% var int: S;
% var int: F;
% var int: M;

% constraint 8*S + 5*F + 3*M <= 18;
% constraint S>=0;
% constraint F>=0;
% constraint M>=0;

% solve maximize 29*S + 19*F + 8*M;

enum Dish;
int: capacity;
array[Dish] of int: satisf;
array[Dish] of int: size;

array[Dish] of var int: amt;

constraint forall(i in Dish)(amt[i] >= 0);
constraint sum(i in Dish)(size[i] * amt[i]) <= capacity;

solve maximize sum(i in Dish)(satisf[i]*amt[i]);

output ["Amount = ", show(amt), "\n"];

