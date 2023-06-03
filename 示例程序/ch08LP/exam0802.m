% min  z=3*x1+x2-x3
% s.t. x1+x2-2*x3>=2
%      x1-2*x2+x3>=2
%      3*x1+2*x2-x3=14
%      x1,x2,x3>=0
clear all; clc;
c=[3,1,-1];A1=[1,1,-2;1,-2,1];A2=[3,2,-1];b1=[2,2];b2=14;v1=[0 0 0];  
' ------  command one: input error & unbounded'
% unbounded
[x,z,ef,out,lag]=linprog(c,A1,b1,A2,b2,v1)  

' ------  command two: corrected input'
%x= (4,2,2),OPTIMAL z= 12
[x2,z2,ef2,out2,lag2]=linprog(c,-A1,-b1,A2,b2,v1)  

