array[int] of int: readings;
int: start;

int: len = length(readings);
array[1..len+1] of var int: temp;

constraint temp[1]=start;
constraint forall(i in 1..len)(temp[i+1] = (temp[i] + readings[i]) div 2);


solve satisfy;

output [show(temp)];
