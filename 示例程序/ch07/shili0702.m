clc; clear all;
t=[1    2   3   4   5   6   7   8   9   10  11  12]';
c=[82   77  68  51  41  38  35  28  25  18  15  12]';
y=log(c);  
f=[t,ones(12,1)]; 
aa=inv(f'*f)*f'*y           % ����ʽ(36)������С���˽�
a=f\y                          % �������, Ҳ�õ���С���˽�
z=aa-a                       % �ж�aa��a�Ƿ�������(���Ƿ�z����Ϊ0)
k=-a(1),c0=exp(a(2))  %����k=-a(1), c0=exp(a(2))

%����ʽ���
aaa=polyfit(t,y,1)                    
zz=aaa'-a
yerror=polyval(aaa,t)-y
