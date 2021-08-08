enum prisoner;

int: n;
set of int: row = 1..n;
int: m;
set of int: col= 1..m;
array[row, col] of int: cost;

set of prisoner: danger;
set of prisoner: female;
set of prisoner: male = prisoner diff female;

