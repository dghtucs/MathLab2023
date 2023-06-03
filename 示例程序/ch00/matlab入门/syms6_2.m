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

















