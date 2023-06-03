function f=shili0902fun1(x,a,b,demand)
%a=[1.25,8.75,0.5,5.75,3,7.25];
%b=[1.25,0.75,4.75,5,6.5,7.75];
%demand=[3 5 4 7 6 11];
% x(1:6): quantity from (x(7), x(8)) to (a(i),b(i))
% demand-x(1:6): quantity from (x(9), x(10)) to (a(i),b(i))
f=0;
for i=1:6		
   d1=sqrt((x(7)-a(i))^2+(x(8)-b(i))^2);
   d2=sqrt((x(9)-a(i))^2+(x(10)-b(i))^2);
   f=d1*x(i)+d2*(demand(i)-x(i))+f;
end
