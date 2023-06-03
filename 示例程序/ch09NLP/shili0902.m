% P227 location problem: nonliear programming
clear all, clc,
format short
% LOCATION 1: (x(13),x(14)), quantity from 1: x(1:6) 
% LOCATION 2: (x(15),x(16)), quantity from 2: x(7:12)

a=[1.25 8.75  0.5  5.75   3 7.25];
b=[1.25 0.75 4.75     5 6.5 7.75];
d=[3 5 4 7 6 11]';
e=[20,20]';

%	A1=[1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 
%      0 0 0 0 0 0 1 1 1 1 1 1 0 0 0 0]
A1=[ones(1,6),zeros(1,10);zeros(1,6),ones(1,6),zeros(1,4)];
B1=e;

%	A2=[1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 
%      0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0
%	    0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0
%      0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0
%	    0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0
%      0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0]
A2=[eye(6),eye(6),zeros(6,4)];	
B2=d;

x0=[zeros(1,12) 5 1 2 7]; % 取原料场位置为新料场位置的初值
v1=zeros(1,16);
v2=[d',d',[10,10,10,10]];

opt=optimoptions(@fmincon,'MaxIter',100);
[x,f,exitflag,out]=fmincon(@shili0902fun,x0,A1,B1,A2,B2,v1,v2,[],[],a,b)