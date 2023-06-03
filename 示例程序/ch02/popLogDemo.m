% Logistic Model
fplot(@popIncFun,[0,1]);
xlabel('x','fontsize',20);  ylabel('dx/dt','fontsize',20);
pause;

r=0.29;     xm=1;   x0=0.05;
%fname=@popCalFun;
%fplot(fname,[0,20],[],[],[],r,x0,xm);
fplot(@popCalFun,[0,20],[],[],[],r,x0,xm);
xlabel('t','fontsize',20);  ylabel('x','fontsize',20);
pause

% 1790-1900美国人口数据
x=[3.9 5.3 7.2 9.6 12.9 17.1 23.2 31.4 38.6 50.2 ...
    62.9 76.0 92.0 106.5 123.2 131.7 150.7 179.3 ...
    204.0 226.5 251.4 281.4];
t=0:length(x)-1;    x0=x(1);
r=0.2557;           xm=392.0886;    % 拟合的结果
plot(t,x,'b+'); hold on;
fplot('popCalFun',[0,length(x)+3],'r',[],[],r,x0,xm)
xlabel('t','fontsize',20,'color','red');
ylabel('x','fontsize',20,'color','b');
hold off;