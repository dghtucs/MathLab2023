% z=f(x,y) = sin(r)/r, r=sqrt(x^2+y^2)
%
x=-7.5:0.5:7.5;
y=x;

%��άͼ�ε�X��Y����
[X,Y] = meshgrid(x,y);
R=sqrt(X.^2+Y.^2)+eps;
Z=sin(R)./R;

%��ά�������
mesh(X,Y,Z)
title('Example: A Beautiful Graph','fontsize',16)
pause;

%�ȸ���
contour(X,Y,Z,10)
title('Example: A Beautiful Graph','fontsize',16,'color','red')
pause

%�ݶȣ����򳡣�
[px,py]=gradient(Z,.2,.2);
quiver(px,py);