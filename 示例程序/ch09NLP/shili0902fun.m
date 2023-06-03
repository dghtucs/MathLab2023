function f=shili0902fun(x,a,b)
%a=[1.25,8.75,0.5,5.75,3,7.25];
%b=[1.25,0.75,4.75,5,6.5,7.75];
% x(1:6): quantity from (x(13), x(14)) to (a(i),b(i))
% x(7:12): quantity from (x(15), x(16)) to (a(i),b(i))
f=0;
for i=1:6		
   d1=sqrt((x(13)-a(i))^2+(x(14)-b(i))^2);
   d2=sqrt((x(15)-a(i))^2+(x(16)-b(i))^2);
   f=d1*x(i)+d2*x(i+6)+f;
end
