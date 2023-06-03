%linprog for location problem
% LOCATION 1: x(1:6) 
% LOCATION 2: x(7:12)
clc; clear all;
a=[1.25 8.75 0.5  5.75 3   7.25];
b=[1.25 0.75 4.75 5    6.5 7.75];
d=[3 5 4 7 6 11];e=[20,20];w1=[5,1];w2=[2,7];
u=sqrt((w1(1)-a).^2+(w1(2)-b).^2); % DISTANCE FROM LOCATION 1
v=sqrt((w2(1)-a).^2+(w2(2)-b).^2); % DISTANCE FROM LOCATION 2
c=[u,v];

%	A1=[1 1 1 1 1 1 0 0 0 0 0 0
%      0 0 0 0 0 0 1 1 1 1 1 1]
A1=[ones(1,6),zeros(1,6);zeros(1,6),ones(1,6)];
B1=e;

%	A2=[1 0 0 0 0 0 1 0 0 0 0 0
%      0 1 0 0 0 0 0 1 0 0 0 0
%	    0 0 1 0 0 0 0 0 1 0 0 0
%      0 0 0 1 0 0 0 0 0 1 0 0
%	    0 0 0 0 1 0 0 0 0 0 1 0
%      0 0 0 0 0 1 0 0 0 0 0 1]
A2=[eye(6),eye(6)];	
B2=d;

v1=zeros(1,12);
x=linprog(c,A1,B1,A2,B2,v1);
[x(1:6)';x(7:12)'],z=c*x
