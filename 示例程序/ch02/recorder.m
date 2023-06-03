clear all; clc; clf;
t=[20      40     60      80   100    120   140    160    183.5];
n=[1153  2045  2800  3466   4068  4621  5135  5619  6152];
plot(n,t,'+')
hold on
pause

% t = a*n^2 + b*n ;  i.e. t/n = an+b;
c = polyfit(n,t./n,1)
a = c(1)
b = c(2)

ct=a*n.^2 + b*n;

plot(n,ct,'-')
hold off