% spiderDemo2: show spider model in one window
x0=100;y0=10;x1=110;beta=5;n=10;    alpha=[0.1,0.24];

for k=1:2
a=alpha(k);
info=['\alpha=',num2str(a),',\beta=',num2str(beta)];
[x,y]=spiderFun(x0,y0,x1,a,beta,n);
subplot(2,2,2*k-1); plot(x);  grid; 
    title(info,'FontSize',16);  gtext('x(k)');  
subplot(2,2,2*k);   plot(y);  grid; 
    title(info,'FontSize',16);  gtext('y(k)'); 
end