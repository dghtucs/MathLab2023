% 1790-1900美国人口数据
x=[3.9 5.3 7.2 9.6 12.9 17.1 23.2 ...
    31.4 38.6 50.2 62.9 76.0];
t=0:length(x)-1;
r=0.2743;x0=4.1884;   % 拟合的结果
plot(t,x,'b+'); hold on;
fplot(@popExpFun,[0,length(x)],'r',[],[],r,x0)
xlabel('t');    ylabel('x');
title('1790-1900','FontSize',20);
hold off;
pause
 
% 加上1910-2000美国人口数据
x1=[92.0 106.5 123.2 131.7 150.7 179.3 204.0...
    226.5 251.4 281.4];
x=[x,x1];
t=0:length(x)-1;
r=0.2022;x0=6.0450;    % 拟合的结果
plot(t,x,'b+'); hold on;
fplot(@popExpFun,[0,length(x)+3],'r',[],[],r,x0)
xlabel('t','fontsize',20,'color','red');
ylabel('x','fontsize',20,'color','b');
title('1790-2000','FontSize',20);
hold off;