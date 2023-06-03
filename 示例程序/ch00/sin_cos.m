y=[0 1 5 6 2 0];
plot(y);
pause;

x=linspace(0,2*pi,30);
y1=sin(x);
y2=cos(x);

plot(x,y1,'bs');
gtext('sin(x)');
pause;

plot(x,y2,'r+');
gtext('cos(x)','FontName','Times','Fontsize',20);
pause;

plot(x,y1,'b^',x,y2,'rv');
gtext({'sin(x)','cos(x)'},'Color','Green','Fontsize',20);
pause;

plot(x,y1,'b-.',x,y2,'r.-');
grid;
xlabel('x');
ylabel('y');
title('sin(x) vs. cos(x)','Color','Red','Fontsize',16);
pause;