set of int: digit = 1..9;
array[digit] of int: rods = [1,2,3,4,5,2,3,4,5];

var digit: m1;
var digit: m2;
var digit: m3;
var digit: m4;
var digit: m5;

constraint rods[m1] + rods[m2] + rods[m3] + rods[m4] + rods[m5] = 12;

constraint 2303 + m1*10 + 980 + m2*1000 + m3 = 301 + m4*1000 + m5*10;

include "alldifferent.mzn";

constraint alldifferent([m1, m2, m3, m4, m5]);

solve satisfy;
