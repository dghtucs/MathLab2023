clc;clear all;
x0=[10,0.5];
t=[.25 .5 1 1.5 2 3 4 6 8];
c=[19.21 18.15 15.36 14.1 12.89 9.32 7.45 5.24 3.01];
[x,norm,res,ef,out]=lsqcurvefit(@exam0703fun,x0,t,c)
