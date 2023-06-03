function [x,y]=spiderFun(x0,y0,x1,a,b,max)
x(1)=x1;
for k=1:max-1
    y(k)=y0-a*(x(k)-x0);
    x(k+1)=x0+b*(y(k)-y0);
end
y(max)=y0-a*(x(max)-x0);