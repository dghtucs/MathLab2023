% intlinprog for lotsing problem
%    x(1:T) : x (production) 
%  x(T+1:2T): y (binary variable)
% x(2T+1:3T): I (inventory)
clc; clear all;
T=4; d=[2,3,2,4]'; s=3; c=50; h=1; M=sum(d);
ct=c*ones(1,T); st=s*ones(1,T); ht=h*ones(1,T);
f = [ct,st,ht];

%	A1=[1 0 0 0 -M 0 0 0 0 0 0 0
%      0 1 0 0 0 -M 0 0 0 0 0 0
%      0 0 1 0 0 0 -M 0 0 0 0 0]
%      0 0 0 1 0 0 0 -M 0 0 0 0]
A1 = [eye(T),-M*eye(T),zeros(T)];
B1 = zeros(T,1);

%	A2=[1 0 0 0 0 0 0 0 -1 0 0 0
%       0 1 0 0 0 0 0 0 1 -1 0 0
%	    0 0 1 0 0 0 0 0 0 1 -1 0
%       0 0 0 1 0 0 0 0 0 0 1 -1]
A2add = -eye(T) + [zeros(1,T); eye(T-1,T)];
A2 = [eye(T),zeros(T),A2add];
B2=d;

v1=zeros(1,12); 
v2=[Inf(1,T), ones(1,T), Inf(1,T)];
intcon=[T+1:2*T];
[x,fv,ef,out]=intlinprog(f,intcon,A1,B1,A2,B2,v1,v2)
