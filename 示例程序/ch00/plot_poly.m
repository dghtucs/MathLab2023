%polynomial plot: is it polynomial continous?
x=0.988:.0001:1.012;
y=x.^7-7*x.^6+21*x.^5-35*x.^4+35*x.^3-21*x.^2+7*x-1;
plot(x,y,'r')
hold on
fplot(@(x) x.^7-7*x.^6+21*x.^5-35*x.^4+35*x.^3-21*x.^2+7*x-1,[0.988,1.012])
hold off