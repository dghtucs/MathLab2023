% Example: 0901
clc;clear all;
H=[4 -3; -3 6];  c=[-3 1];
A1=[-2 1;1 -3]; b1=[3 3];
A2=[1 2]; b2=3; v1=[2,-Inf]; v2=[Inf,0];
[x,fv,ef,out,lag] = quadprog(H,c,A1,b1,A2,b2,v1,v2)
lag_eq=lag.eqlin
lag_ineq=lag.ineqlin
lag_low=lag.lower
lag_up=lag.upper