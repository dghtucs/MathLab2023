% 定义符号
syms a b c d e f
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





















