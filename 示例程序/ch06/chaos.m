function chaos(iter_fun,x0,r,n)   % �ú���û�з���ֵ��iter_fun�ǵ����������������x0�ǵ�����ֵ��
kr=0;                     
for rr=r(1):r(3):r(2)             % ������[r(1),r(2)]�ǲ����仯�ķ�Χ��r(3) �ǲ���
    kr=kr+1;
    y(kr,1)=feval(iter_fun,x0,rr);
    for i=2:n(2)			 %������n(2)�ǵ������еĳ��ȣ�����ͼʱǰn(1)������ֵ������
        y(kr,i)=feval(iter_fun,y(kr,i-1),rr);    
    end
end
plot([r(1):r(3):r(2)],y(:,n(1)+1:n(2)),'k.');  
