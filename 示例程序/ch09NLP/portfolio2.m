H0=[8 5 -20;5 72 -30;-20 -30 200];
c=[-5 -8 -10];
A=[20 25 30];
b=5000;
for i=1:1000,
   beta=0.0001*i;
	H=beta*H0;
	x=quadprog(H,c,A,b,[],[],[0,0,0]);
	REV(i)=-c*x;                 % 计算期望收益
STD(i)=sqrt(x'*H0*x/2);          % 计算风险（均方差）
end
plot(REV,STD)                    % 画预期收益和均方差图形
xlabel('预期收益/百元')
ylabel('均方差/百元')

