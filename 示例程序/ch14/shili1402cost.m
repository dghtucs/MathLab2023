r=[2 2.5 3 3.5 4];
c1=[65 170 350 660 1000];
lgc1=log(c1);lgr=log(r);
A=polyfit(lgr,lgc1,1);
b=A(1);a=exp(A(2));
rr=2:0.01:4;cc1=a*rr.^b;
plot(r,c1,'+',rr,cc1),grid
