clc; clear;
n=4;
P=760;
a=[18.607,15.841,20.443,19.293]';
b=[3643.31,2755.64,4628.96,4117.07]';
c=[239.73,219.16,252.64,227.44]';
Q=[1.0    0.192   2.169  1.611
   0.316   1.0    0.477  0.524
   0.377  0.360   1.0    0.296
   0.524  0.282   2.065  1.0];
XT0=[0,0.5,0, 77];
[XT,Y]=fsolve(@azeofun,XT0,[],n,P,a,b,c,Q);
X=[XT(1:n-1),1-sum(XT(1:n-1)),XT(n)];
X, Y
