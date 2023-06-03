% z=f(x,y)=x*e^(-x^2-y^2) 

x=-2:.2:2;
y=x;

%��άͼ�ε�X��Y����
[X,Y] = meshgrid(x,y);
Z=X.*exp(-X.^2-Y.^2);

%��ά�������
mesh(Z);
pause;

%�ȸ���
contour(Z,10);
pause;

%�ݶȣ����򳡣�
[px,py]=gradient(Z,.2,.2);
quiver(px,py);