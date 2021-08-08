enum soldier;
enum shift;
int: ndays;
set of int: day = 1..ndays;

int: o; %required number for night
int: l; %lower bound for eve
int: u; %upper bound for eve

array[soldier, day] of var shift: roster;

constraint forall(s in soldier, k in 1..ndays-2)(sum(d in k..k+2)(roster[s, d] = night)<=2);
constraint forall(s in soldier, d in 1..ndays-2)(roster[s,d] = night /\ roster[s, d+1] = night -> roster[s, d+2] != night);

constraint forall(s in soldier, d in 1..ndays-1)(roster[s,d] = eve -> roster[s,d+1] != night);

constraint forall(d in day)(sum(s in soldier)(roster[s,d] = night) = o);
constraint forall(d in day)(sum(s in soldier)(roster[s,d] = eve) >= l);
constraint forall(d in day)(sum(s in soldier)(roster[s,d] = eve) <= u);


var int: toneve = sum(d in day)(sum(s in soldier)(roster[s,d] = eve));
solve maximize toneve;



















%划分问题