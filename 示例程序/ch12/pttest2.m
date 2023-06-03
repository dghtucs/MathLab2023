%两个总体均服从正态分布，且两个未知方差相等的假设下，利用t检验:
%两个样本的均值（xbar,ybar）、标准差（s1,s2）和容量（m,n）为输入参数
%（包括双侧和单侧检验，标识tail的用法与ztest相同，所有输入参数不可省略） 

function [h,sig]=pttest2(xbar,ybar,s1,s2,m,n,alpha,tail)
spower=((m-1)*s1^2+(n-1)*s2^2)/(m+n-2);
t=(xbar-ybar)/sqrt(spower/m+ spower/n);
if tail==0
    a=tinv(1-alpha/2,m+n-2);
    sig =2*(1-tcdf(abs(t),m+n-2));
    if abs(t)<=a
        h=0;
    else
        h=1;
    end
end
if tail==1
    a=tinv(1-alpha,m+n-2);
    sig =1-tcdf(t,m+n-2);
    if t<=a
        h=0;
    else
        h=1;
    end
end
if tail==-1
    a=tinv(alpha,m+n-2);
   sig =tcdf(t,m+n-2);
    if t>=a
        h=0;
    else
        h=1;
    end
end
