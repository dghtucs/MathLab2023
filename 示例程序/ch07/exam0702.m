clc;clear all;
x0=[1,1];a=2;b=2;
tic;
[x1,f1,e1,out1]=fminunc(@exam0702fun,x0,[],a,b)
t1=toc
tic
[x2,f2,e2,out2]=fminsearch(@exam0702fun,x0,[],a,b)
t2=toc