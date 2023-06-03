% P227 location problem: nonliear programming (10 dimensions)
clear all, clc
format short
% LOCATION 1: (x(7),x(8)), quantity from 1: x(1:6) 
% LOCATION 2: (x(9),x(10)), quantity from 2: x(7:12)

a=[1.25 8.75  0.5  5.75   3 7.25];
b=[1.25 0.75 4.75     5 6.5 7.75];
d=[3 5 4 7 6 11]';
e=[20,20]';

%	A1=[1 0 0 0 0 0 0 0 0 0 
%      0 1 0 0 0 0 0 0 0 0
%	    0 0 1 0 0 0 0 0 0 0
%      0 0 0 1 0 0 0 0 0 0
%	    0 0 0 0 1 0 0 0 0 0
%      0 0 0 0 0 1 0 0 0 0
%      1 1 1 1 1 1 0 0 0 0
%      -1 -1 -1 -1 -1 -1 0 0 0 0]
A10=[eye(6);ones(1,6);-1*ones(1,6)];	
A1=[A10,zeros(8,4)];
B1=[d;e(1);e(2)-sum(d)];

x0=[3*rand(1,6) 5 1 2 7]; % 取原料场位置为新料场位置的初值
v1=zeros(1,10);   v2=[d',[10,10,10,10]];

opt=optimoptions(@fmincon,'StepTolerance',1e-14,...
    'ConstraintTolerance',1e-10,...
    'FunctionTolerance',1e-10);
[x,f,exitflag,out]=fmincon(@shili0902fun1,...
    x0,A1,B1,[],[],v1,v2,[],opt,a,b,d)

%采用SQP算法
opt=optimoptions(@fmincon,'Algorithm','sqp','StepTolerance',1e-14,...
    'ConstraintTolerance',1e-10,...
    'FunctionTolerance',1e-10);
[x,f,exitflag,out]=fmincon(@shili0902fun1,...
    x0,A1,B1,[],[],v1,v2,[],opt,a,b,d)

%采用有效集算法
opt=optimoptions(@fmincon,'Algorithm','active-set','StepTolerance',1e-14,...
    'ConstraintTolerance',1e-10,...
    'FunctionTolerance',1e-10);
[x,f,exitflag,out]=fmincon(@shili0902fun1,...
    x0,A1,B1,[],[],v1,v2,[],opt,a,b,d)

%验证最优解
x0=[3,0,4,7,6,0,3.25,5.65,7.25,7.75];
[x,f,exitflag,out]=fmincon(@shili0902fun1,...
    x0,A1,B1,[],[],v1,v2,[],opt,a,b,d)
