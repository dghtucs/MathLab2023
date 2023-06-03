clc; clf; clear all; 
n=20;
k=(0:n)';
y1=plant_fun(100, n+1,0.18);      % 给定x0, n, b，调用plant_fun.m计算
y2=plant_fun(100, n+1,0.19);
y3=plant_fun(100, n+1,0.20);
round([k,y1',y2',y3']),
plot(k,y1,k,y2,':',k,y3,'--'),
gtext('b=0.18'),gtext('b=0.19'),gtext('b=0.20')
