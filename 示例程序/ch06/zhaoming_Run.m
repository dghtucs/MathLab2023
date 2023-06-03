% plot the figures for C(x) and C'(x)
clear all; clc;
p1=2000;p2=3000;h1=5;h2=6;s=20;
fplot(@zhaoming_fun,[0,20],[],[],[],p1,p2,h1,h2,s);
grid;gtext('C(x)','Fontsize',20);
pause;
fplot(@zhaoming,[0,20],[],[],[],p1,p2,h1,h2,s);
hold on;plot(0:0.01:20,0,'r');hold off;
grid;gtext('C''(x)','Fontsize',20);
pause;

x0=[0,10,20];xl=0;xr=20;
for k=1:3
	x(k)=fzero(@zhaoming,x0(k),[],p1,p2,h1,h2,s);
	c(k)=feval(@zhaoming_fun,x(k),p1,p2,h1,h2,s);
end
cl=zhaoming_fun(xl,p1,p2,h1,h2,s);
cr=zhaoming_fun(xr,p1,p2,h1,h2,s);
[xl,x,xr;cl,c,cr] 