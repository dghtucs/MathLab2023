% z=f(x,y) = sin(r)/r, r=sqrt(x^2+y^2)
%
x=-7.5:0.5:7.5;
y=x;

%三维图形的X，Y数组
[X,Y] = meshgrid(x,y);
R=sqrt(X.^2+Y.^2)+eps;
Z=sin(R)./R;

%三维网格表面
mesh(X,Y,Z)
title('Example: A Beautiful Graph','fontsize',16)
pause;

%等高线
contour(X,Y,Z,10)
title('Example: A Beautiful Graph','fontsize',16,'color','red')
pause

%梯度（切向场）
[px,py]=gradient(Z,.2,.2);
quiver(px,py);