[x,y]=meshgrid(-1.5:0.1:1.5,-1.5:0.1:1.5);
z=100*(y-x.^2).^2+(1-x).^2;
contour(x,y,z,100)
temp=colormap;
%colormap(hsv)
xlabel('x��')
ylabel('y��')
pause
colormap([0.49,1,0.83])
surfl(x,y,z)
%mesh(x,y,z)
title('Rosenbrockͼ��')
xlabel('x��')
ylabel('y��')
pause
colormap(temp)
