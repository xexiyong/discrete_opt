enum  color= {green, blue, pink, yellow};
% 决策变量 参数，可以是枚举类型； 数组下表可以是枚举类型； 集合元素可以基于枚举来定义；
var color: si;
var color: yan;
var color: yu;
var color: xu;
var color: qing;
var color: ji;
var color: you;
var color: bing;
var color: yong;
var color: liang;
var color: yi;
var color: jing;
var color: yang;
var color: jiao;

constraint liang != yong;
constraint yong != si;
constraint yong != jing;
constraint yong != yi;
constraint si != bing;
constraint si != ji;
constraint si != yan;
constraint si != yu;
constraint si != jing;
constraint yi != jing;
constraint yi != jiao;
constraint jiao != jing;
constraint jiao != yang;
constraint jing != yu;
constraint jing != yang;
constraint yang != yu;
constraint yang != xu;
constraint yu != yan;
constraint yu != xu;
constraint xu != yan;
constraint xu != qing;
constraint yan != ji;
constraint yan != qing;
constraint bing != ji;
constraint bing != you;
constraint ji != you;
constraint ji != qing;

solve satisfy;