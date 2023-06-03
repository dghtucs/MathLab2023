function y=market(x,c)
u=4.8;d=0.25;r=0.3;
y=r*(c-atan(u*x))/d+(1-r)*x;
