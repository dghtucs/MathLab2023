% spiderDemo1: show spider model
x0=100;y0=10;x1=110;beta=5;n=10;    alpha=[0.1,0.24];

for k=1:2
a=alpha(k);
info=['\alpha=',num2str(a),',\beta=',num2str(beta)];
[x,y]=spiderFun(x0,y0,x1,a,beta,n);
plot(x);   grid;   gtext('x(k)');
    gtext(info,'FontSize',20);    pause
plot(y);   grid;   gtext('y(k)');  
    gtext(info,'FontSize',20);    pause
end