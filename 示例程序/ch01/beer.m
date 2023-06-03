clear all; clc; clf;
t=1:12;   % i.e., t=1:1:12; or t=[1,2,3,4,5,6,7,8,9,10,11,12];
c=[82	77	68	51	41	38	35	28	25	18	15	12];
plot(t,c,'+')
pause

lc=log(c);            % 自然对数
plot(t,lc,'+')
% semilogy(t,c,'+')        % 常用对数
pause

% log c(t) = -k t + log c0 ;
a = polyfit(t,lc,1)
k = -a(1)
c0= exp(a(2))
pause

ct=c0*exp(-k*t)
plot(t,c,'+')
hold on
plot(t,ct,'-')
hold off