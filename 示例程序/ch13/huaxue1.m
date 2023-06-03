%x=[0.02	 0.02 0.06 0.06 0.11 0.11 0.22 0.22	0.56 0.56 1.10 ];
%y=[ 67	  51	84	86	 98	  115  131	124	 144 158  160];         % 未处理
x=[0.02	 0.02 0.06 0.06 0.11 0.11 0.22  0.22 0.56 0.56 1.10  1.10];
y=[76    47   97   107	 123 139  159   152	 191  201  207   200];   % 已处理
beta0=[143 0.03];
[beta,R,J]=nlinfit(x,y,'huaxue',beta0);
betaci=nlparci(beta,R,J);
beta,betaci
xx=0:0.01:1.2;
yy=beta(1)*xx./(beta(2)+xx);
plot(x,y,'+',xx,yy),axis([0 1.2 0 200]), pause
nlintool(x,y,'huaxue',beta)


 