clear all; clc;
x0=[3,4,30];                              % x的初值
v=[1,2,0];                                % x的下界
u=[10,4,50];                              % x的上界
[x,c]=fmincon(@sanc,x0,[],[],[],[],v,u,@sancc),

%得到 x =  6.0072    2.9695   27.0408
% c =  4.8245e+003
