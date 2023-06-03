% 定义符号
syms a b c d e f y
x = sym('x');
f = x^2+x;
diff(f)

f = f + a*b^2;
diff(f,b)

% 求二阶导
diff(f,x,2)

% 求不定积分
int(f,a)

% 求定积分
int(f,a,1,2)


% 求极限
limit(f)

limit(f,x,1)

limit(f,x,inf)

% 级数和
symsum(1/x,x,1,5)

symsum(1/x^2,x,2,inf)


% 泰勒多项式
taylor(exp(x),x,2,'order',9)

taylor(log(x),x,2)

% 解方程
e = x^2+x+1;
solve(e,x)
f=cos(2*x)+sin(x)==1
solve(f)
h=x^2+1*x+1+a==1
s = solve(h,a)

y1=x+y==2;
y2=x-y==9
[x,y]=solve(y1,y2)

% 解微分方程
dsolve('Dy=1+y^2')

dsolve('Dy=1+y^2','y(0)=1','x')



factor(x^2-5*x+6)









