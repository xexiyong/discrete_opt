enum product;
array[product] of int: profit;

enum resource;
array[resource] of int: capacity;

array[product, resource] of float: consumption;

array[product] of var int: produce;

constraint forall(p in product)(produce[p] >= 0);

constraint forall(r in resource)(sum(p in product)(consumption[p, r] * produce[p]) <= capacity[r]);

solve maximize sum(p in product)(profit[p]*produce[p]);

output ["\(p): \(produce[p])\n" | p in product];
