% z=f(x,y)=x*e^(-x^2-y^2) 

x=-2:.2:2;
y=x;

%三维图形的X，Y数组
[X,Y] = meshgrid(x,y);
Z=X.*exp(-X.^2-Y.^2);

%三维网格表面
mesh(Z);
pause;

%等高线
contour(Z,10);
pause;

%梯度（切向场）
[px,py]=gradient(Z,.2,.2);
quiver(px,py);