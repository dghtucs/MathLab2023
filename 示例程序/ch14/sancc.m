function [cc,cceq]=sancc(x)              % 约束条件，x(3)=t
k=18.5;
p=19600/k/x(1)/x(2)^2;
q=1-exp(-k*x(1)*x(2)^2*x(3)/2000);
cc=p*q-20;                              % 不等式约束
cceq=500-p*x(3)+p^2*q/9.8;              % 等式约束
