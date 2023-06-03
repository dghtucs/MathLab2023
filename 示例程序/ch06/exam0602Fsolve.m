%Example: 解方程组的fsolve

x0=[2,2];                     % 初始值
[x,fv,ef,out,jac]=fsolve(@exam0602fun,x0,[],1,4,-1,1)

opt=optimset('MaxIter',2,'TolX',10e-8);
[x2,fv2,ef2,out2,jac2]=fsolve(@exam0602fun,x0,opt,1,4,-1,1)
