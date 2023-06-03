clc; clear all;
x0=[10,0.5];
t=[.25 .5 1 1.5 2 3 4 6 8];
c=[19.21 18.15 15.36 14.1 12.89 9.32 7.45 5.24 3.01];
%opt1 = optimoptions('lsqnonlin', 'Algorithm','levenberg-marquardt');
opt2=optimset('Algorithm','levenberg-marquardt');
[x,norm,res,ef,out]=lsqnonlin(@exam0703fun1,x0,[],[],opt2,t,c)
