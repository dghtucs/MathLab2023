clc,clear all
t=0:0.1:1;
x1=(10^6/4+1)*exp(-t)-exp(-10^6*t);
x2=-(10^6/4+1)*exp(-t)+(10^6+1)/2*exp(-10^6*t);
A=[t;x1;x2]'
x0=[10^6/4,10^6/4-1/2];
tic
[t,x]=ode23s(@stiff1,t,x0);
t1=toc
%pause
%B=[t,x]
tic,
[t,y]=ode23(@stiff1,t,x0);
t2=toc
%C=[t,y]
