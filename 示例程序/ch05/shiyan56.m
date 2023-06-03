p=-1;q=-0.05;x0=100;xn=1000; n=49;
A1=sparse(1:n,1:n,p,n,n);        % 输入A的对角元素
   A2=sparse(1:n-1,2:n,1,n,n);      % 输入A的（上）次对角元素
   A3=sparse(2:n,1:n-1,q,n,n);      % 输入A的（下）次对角元素
   A=A1+A2+A3;                 
   i=[1,n];j=[1,1];s=[-q*x0,-xn];   
b=sparse(i,j,s,n,1);             % 输入b
x=A\b;                        % 用稀疏矩阵求解
x1=x(1),  
k=0:n+1;xx=[x0,x',xn];
plot(k,xx),grid,
