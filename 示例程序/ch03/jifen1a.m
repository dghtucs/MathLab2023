%辛普森公式
z1=quad('1./(1-sin(x))',0,pi/4)      
f1=inline('1./(1-sin(x))');  % inline object
z1a=quad(f1,0,pi/4)
f2=@ (x) 1./(1-sin(x));      % function handle
z1b=quad(f2,0,pi/4)
f3= '1./(1-sin(x))';         % char (string)
z1c=quad(f3,0,pi/4)
%与精确值比较
dz1=z1-sqrt(2)

%Gauss-Lobatto公式
z2=quadl(f1,0,pi/4)         % can also use f2(x) or f3(x)
%与精确值比较
dz2=z2-sqrt(2)

%梯形公式   
x=0:pi/400:pi/4;                 
y=1./(1-sin(x));
z3=trapz(y)*pi/400
yy=f1(x); % can also use f2(x), but not f3(x)
z3a=trapz(yy)*pi/400
z4=trapz(x,y)
%与精确值比较
dz3=z3-sqrt(2)
dz4=z4-sqrt(2)