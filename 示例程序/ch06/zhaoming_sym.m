% 路灯照明: 符号运算
clc;clear all;
syms p1 h1 p2 h2 s x
c1=p1*h1/(h1^2+x^2)^(3/2);
c2=p2*h2/(h2^2+(s-x)^2)^(3/2);
c=subs(c1+c2,[p1,p2,h1,h2,s],[2000,3000,5,6,20])

%导数
dc1=diff(c1,x);
dc2=diff(c2,x);
dc=dc1^2-dc2^2;
nc=numden(dc)
f=collect(nc/9,x)
ff=subs(f,[p1,p2,h1,h2,s],[2000,3000,5,6,20])/(-4000000)
pause

%上面的结果的系数就是下面的a
a=[56,1760,-411975,24315000,-886167750,22194630000,-388140507750,4698666870000,-37664582848875,180676117955000,-393823660188775,-31640625000,316406250000];
xstar=roots(a);
i=0;
for k=1:12
    if isreal(xstar(k))&(xstar(k)<=20)&(xstar(k)>=0)
        i=i+1;
        xx(i)=xstar(k);
        cstar(i)=subs(c,x,xstar(k));
    end
end
c00=subs(c,x,0);c20=subs(c,x,20);
[0,xx,20;c00,cstar,c20]