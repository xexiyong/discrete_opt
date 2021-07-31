array[int] of int: readings;
int: start;

enum choice={do_nothing, heat, strongly_heat, cool, strongly_cool};
array[choice] of int: change=[0, 1, 4, -2, -5];
array[choice] of int: cost=[0, 1, 5, 3, 9];

int: len=length(readings);
array[1..len+1] of var int: temp;
array[1..len] of var choice: my_choice;

constraint temp[1]=start;
constraint forall(i in 1..len)(temp[i+1] = (temp[i] + readings[i]) div 2 + change[my_choice[i]]);
constraint forall(i in 1..len+1)(temp[i]>=25);
constraint forall(i in 1..len+1)(temp[i]<=30);

var int: the_cost=sum(i in 1..len)(cost[my_choice[i]]);

solve minimize the_cost;

output ["temp=\(temp)\nchoice=\(my_choice)\ncost=\(the_cost)"]