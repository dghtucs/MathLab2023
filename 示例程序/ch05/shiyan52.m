clc; clear all
H=hilb(5),
h=rats(H),
b=ones(5,1);
x=H\b;
b(5)=1.1;
x1=H\b;
[x,x1],
n1=cond(H),
n2=rcond(H),
