clc,clear all
N=4; n=5;
for i=1:N
    n=2*n;
    h=pi/4/n;                          % ��������
    x=0:h:pi/4;
    y=1./(1-sin(x));
    z3(i)=trapz(y)*h;                  % �����ι�ʽ����
    w3(i)=z3(i)-sqrt(2);               % ���
    if (i>1) 
        e3(i)=z3(i)-z3(i-1);           % ������
    end
    
    k=length(y);
    y1=[y(2:2:k-1)];s1=sum(y1);
    y2=[y(3:2:k-1)];s2=sum(y2);
    z4(i)=(y(1)+y(k)+4*s1+2*s2)*h/3;   % ������ɭ��ʽ����
    w4(i)=z4(i)-sqrt(2);               % ���
    if (i>1) 
        e4(i)=z4(i)-z4(i-1);           % ������
    end    
end
format long
[z3',w3',e3']
[z4',w4',e4']
