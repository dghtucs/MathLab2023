clc;clf;clear all
p=poly(1:20);
ep=zeros(1,21);
r=roots(p)
plot(1:20,'r*');
hold on
ep(3)=1.0e-5;
re=roots(p+ep)
plot(20:-1:1,re,'b^');
hold off