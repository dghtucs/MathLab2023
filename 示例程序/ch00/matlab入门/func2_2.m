% 标量函数
% feval
x = (0:0.1:1);
% 注意要运算后赋值给x
x=x.*pi;
y = feval(@sin,x)

% inline
z = feval(inline('sin(x)-cos(x)'),x)


% 向量函数
min(x)
max(x)
sum(x)
mean(x)
median(x)













