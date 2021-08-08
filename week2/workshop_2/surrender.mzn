% workshop 2
% select a set of trade negotiation party
enum NEGOTIATOR;
NEGOTIATOR: dummy; 

int: l; % minimum party size
int: u; % maximum party size
int: m; % minimum joint ability

array[NEGOTIATOR] of int: honor;
array[NEGOTIATOR,NEGOTIATOR] of int: joint;

% array[1..u] of var NEGOTIATOR: party;
% constraint forall(i in 1..u-1)(party[i] >= party[i+1] + (party[i] != dummy));
% constraint sum(i in 1..u)(party[i] != dummy) >= l;
% var int: obj1 = sum(i,j in 1..u where i < j)(joint[party[i], party[j]]);
% constraint obj1 >= m;
% var int: obj = min(i in 1..u)(honor[party[i]] + (party[i] = dummy)*(max(honor) + 1));
% solve maximize obj;

var set of NEGOTIATOR: party;
var int: obj1 = sum(i,j in party where i < j)(joint[i,j]);
var int: obj = min([honor[i] | i in NEGOTIATOR where i in party]);
constraint not(dummy in party);
constraint card(party) >= l; 
constraint card(party) <= u;
constraint obj1 >= m;
solve maximize obj;
%output [show(obj1)];