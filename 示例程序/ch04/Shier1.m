ts=0:0.1:15;
x0=[25,2];
[t,x]=ode45('shier',ts,x0);
[t,x],	
plot(t,x),grid,
gtext('x(t)','FontSize',16),gtext('y(t)','FontSize',16),
pause,
plot(x(:,1),x(:,2)),grid,
xlabel('x','FontSize',16),ylabel('y','FontSize',16) 

% averge value of x: T is about 10.7
%trapz(t(1:108),x(1:108,:))/10.7