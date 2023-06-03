% max  z=3*x1+x2
% s.t.-x1+x2   <=2    <== x1-x2>=-2 
%      x1-2*x2 <=2
%    3*x1+2*x2 <=14
%      x1,x2>=0
% x_opt = (4,1), z_max = 13
clc; clear all;
c=-[3,1];   A=[-1,1;1,-2;3,2];  
b=[2,2,14];   v1=[0 0];   
' ------  command one: default'
[x1,f1,ef1,out1,lag1]=linprog(c,A,b,[],[],v1)
' ------  command two: interior-point'
opt2=optimoptions(@linprog,'Algorithm','interior-point');
[x2,f2,ef2,out2,lag2]=linprog(c,A,b,[],[],[],[],[],opt2)
' ------  command three: dual-simplex' 
opt3=optimoptions(@linprog,'Algorithm','dual-simplex');
[x3,f3,ef3,out3,lag3]=linprog(c,A,b,[],[],[],[],[],opt3)
' ------  command four: simplex method'
opt4=optimoptions(@linprog,'Algorithm','simplex');
[x4,f4,ef4,out4,lag4]=linprog(c,A,b,[],[],[],[],[],opt4)
' ------  command five: active-set'
opt5=optimoptions(@linprog,'Algorithm','active-set');
[x5,f5,ef5,out5,lag5]=linprog(c,A,b,[],[],[],[],[],opt5)
x=[x1,x2,x3,x4,x5];
f=[f1,f2,f3,f4,f5];
[x',f']