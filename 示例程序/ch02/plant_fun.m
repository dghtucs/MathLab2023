function x=plant_fun(x0,n,b)       % plant_fun
% ��������M�ļ��� x0, n, b�ɵ���
c=10;a1=0.5;a2=0.25;
p=-a1*b*c;q=-a2*(1-a1)*c*b^2;
x(1)=x0;                     % ����ֵ
x(2)=-p*x(1);                 % ���գ�10����������
for k=3:n
    x(k)=-p*x(k-1)-q*x(k-2);    % ���գ�10����������
end
