clc; clear all; format short;
d=100;v1=1; v2=2;
ts=0:0.1:67;
x0=[0,d];
[t,x]=ode45(@chuan,ts,x0,[],v1,v2);
n=length(x); T=d/v2; t=ts'; 
n1=length(t);
[t(1:10),x(1:10,:)],
[t((n1-10):n1),x((n1-10):n1,:)],   
T

plot(t,x), grid,xlabel('t'),ylabel('x1, x2'), gtext('x1(t)'), gtext('x2(t)'),



