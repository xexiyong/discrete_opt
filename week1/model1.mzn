solve maximize 6*F + 10*L + 8*Z + 40*J;
par int: budget = 10000;  %参数 int float bool set range
constraint 13*F + 21*L + 17*Z + 100*J <= budget;

% 决策变量  range范围
var 0..1000: F;
% equals.  var int: F; constraint F >= 0; F <= 1000;  
var 0..400: L;
var 0..500: Z;
var 0..150: J;

% output array of string;
output [show(L), "\n"];
output ["F=\(F), L=\(L), Z=\(Z), J=\(J)"];

% show(J);
% 内建函数
% %字符串形式输出某值
