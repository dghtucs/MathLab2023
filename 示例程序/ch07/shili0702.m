clc; clear all;
t=[1    2   3   4   5   6   7   8   9   10  11  12]';
c=[82   77  68  51  41  38  35  28  25  18  15  12]';
y=log(c);  
f=[t,ones(12,1)]; 
aa=inv(f'*f)*f'*y           % 按公式(36)计算最小二乘解
a=f\y                          % 左除计算, 也得到最小二乘解
z=aa-a                       % 判断aa，a是否近似相等(即是否z近似为0)
k=-a(1),c0=exp(a(2))  %计算k=-a(1), c0=exp(a(2))

%多项式拟合
aaa=polyfit(t,y,1)                    
zz=aaa'-a
yerror=polyval(aaa,t)-y
