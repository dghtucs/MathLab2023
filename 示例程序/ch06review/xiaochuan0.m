clc; clear all; format short;
d=100;v1=1; v2=2;
T=100;
ts=0:0.1:T;          % 66.6~66.7
x0=[0,d];
[t,x]=ode45(@chuan,ts,x0,[],v1,v2);
[t,x]


plot(t,x), grid,xlabel('t'),ylabel('x1, x2'), gtext('x1(t)'), gtext('x2(t)'),

figure(2);
plot(x(:,1),x(:,2))  % ¹ì¼£



