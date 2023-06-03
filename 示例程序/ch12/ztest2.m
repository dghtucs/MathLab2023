%两个总体标准差已知的情况:自编程序
function [h,sig]=ztest2(x,y,sigma1,sigma2,alpha,tail)
n1=length(x);
n2=length(y);
xbar=mean(x);
ybar=mean(y);
z=(xbar-ybar)/sqrt(sigma1^2/n1+sigma2^2/n2);
if tail==0
    u=norminv(1-alpha/2);
    sig=2*(1-normcdf(abs(z)));
    if abs(z)<=u
        h=0;
    else
        h=1;
    end
end
if tail==1
    u=norminv(1-alpha);
    sig=1-normcdf(z);
    if z<=u
        h=0;
    else
        h=1;
    end
end
if tail==-1
    u=norminv(alpha);
    sig=normcdf(z);
    if z>=u
        h=0;
    else
        h=1;
    end
end
