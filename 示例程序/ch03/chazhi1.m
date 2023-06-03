clf,shg,
n=11;m=21;
x=-5:10/(m-1):5;
y=1./(1+x.^2);z=0*x;plot(x,z,x,y),gtext('y=1/(1+x^2)','FontSize',16),pause
x0=-5:10/(n-1):5;
y0=1./(1+x0.^2);
y1=lagr(x0,y0,x);hold on,plot(x,y1,'r'),gtext('Lagr.','FontSize',12),pause,hold off,

y2=interp1(x0,y0,x);hold on,plot(x,y2,'b'),gtext('Piec.Lin.','FontSize',12),pause,hold off,

y3=interp1(x0,y0,x,'spline');hold on,plot(x,y3,'k*'),gtext('Spline','FontSize',12),
s='      x         y        y1         y2        y3'
[x(11:21)' y(11:21)' y1(11:21)' y2(11:21)' y3(11:21)']
