% 奶制品的生产销售计划
clc; clear all;
c=[12 8 22 16 -1.5 -1.5];
%c=[12 8 19.8 16 -1.5 -1.5]; % 价格波动10%；
A1=[4 3 0 0 4 3;2 1 0 0 3 2;1 0 0 0 1 0];
b1=[600 240 100];
A2=[0 0 1 0 -0.8 0;0 0 0 1 0 -0.75];
b2=[0 0];
v1=[0 0 0 0 0 0];                                  
[x,z0,ef,out,lag]=linprog(-c,A1,b1,A2,b2,v1)
lag.ineqlin, lag.eqlin 
