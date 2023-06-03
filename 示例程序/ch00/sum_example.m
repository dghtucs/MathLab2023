clear all; clc;
n=10000;
A=rand(1,n);
m=1e10;

x1=0;
for i=1:n
    x1=x1+A(i);
end
x1=n*x1;
x1=x1+m;

x2=0;
x2=x2+m;
for j=1:n
for i=1:n
    x2=x2+A(i);
end
end
format long
x1, x2,error=x1-x2
