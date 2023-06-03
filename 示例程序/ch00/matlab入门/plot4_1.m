% 画图
x = linspace(-100,100,1000)
y = sin(x)./x
z = cos(x)./x

plot(x,y,'b-',x,z,'r-')
grid
xlabel('x+\alpha')
ylabel('y')
title('sin and cos')
gtext('鼠标在这里')
pause

plot3(y,z,x)























