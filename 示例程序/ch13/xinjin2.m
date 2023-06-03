M=dlmread('xinjindata.m');
y=M(:,2);
x1=M(:,3);
x2=M(:,4);
x3=M(:,6);
x4=M(:,7);
x5=x2.*x3;
x6=x2.*x4;
n=length(y);
x=[ones(n,1) x1 x2 x3 x4 x5 x6];
[b,bi,r,ri,s]=regress(y,x);
s2=sum(r.^2)/(n-7);
b,bi,s,s2
pause
plot(x1,r,'+'),
pause
xx=M(:,8);
plot(xx,r,'+')