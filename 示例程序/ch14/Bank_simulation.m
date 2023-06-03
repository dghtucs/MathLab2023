%��ѧʵ��(�廪��ѧ������,��2��),14.4����������Ҳ���Ǳ�14.12�е����.
%�����³���Ϊ���������ƣ�SCF������ԣ�p=10%��
%                                             ������s1=5��s2=3���ͻ�����n=500��
clear; clc; format short;
numSimulation=100; % 5��ģ��
n=500; %�˿͵���������.
pr=0.1; %��ʾVIP����ͨ�ͻ�����.
lamda=2;
mu1=1/4;
mu2=1/7;
nD=5; % ��ͨ������,ֻ�ܷ�����ͨ�ͻ�.
nF=3; % �๦�ܴ�����,���Է���VIP����ͨ�ͻ�.
AverwaitD3=0; %��ͨ�ͻ�ƽ���ȴ�ʱ���ֵ��
AverwaitG3=0; %VIP�ͻ�ƽ���ȴ�ʱ���ֵ��
AlistD3=zeros(1,nD); %��ͨ���ڷ����βƽ��ʱ���ֵ.
AlistG3=zeros(1,nF); %�๦�ܴ��ڷ����βƽ��ʱ���ֵ.
for t=1:numSimulation % ģ�����, start of each simulation
x=0;%�˿ͳ�ʼ����ʱ��.
arrv=exprnd(1/lamda,1,n); %������ֵΪ1/lamda(=0.5)��ָ���ֲ�������������С��1�У�n�У���ʾ�˿͵���ʱ������
listT=zeros(3,n); %�˿Ͷ������.��һ��Ϊ�˿͵���ʱ��,�ڶ��б�ǹ˿�����,1Ϊ��ͨ�ͻ�,2ΪVIP,
%��������н��ı�Ϊ0,��ʾ�Ѿ�������,�����п�ʼ����ʱΪ����ʱ��,�˿ͱ���������깤ʱ�����.
waitTD3=0; %SCF������ͨ���ڵȴ�ʱ���ֵ
waitTG3=0; %SCF���Զ๦�ܴ��ڵȴ�ʱ���ֵ
for i=1:n
    x=x+arrv(i); %��i���˿͵���ʱ��.���й˿͵������ͬһָ���ֲ�.
    p=unifrnd(0,1); %����(0,1)����һ�������.
    if p>=pr
        dpro=exprnd(1/mu1); %������ֵΪ4��ָ���ֲ�������������С��1�У�n��,��ʾ��ͨ�˿���Ҫ�ķ�%��ʱ�䡣
        listT(2,i)=1;   %��ͨ�˿�.
        listT(3,i)=dpro;
    else
        vpro=exprnd(1/mu2); %������ֵΪ7��ָ���ֲ�������������С��1�У�n��,��ʾVIP�˿���Ҫ�ķ�%��ʱ�䡣
        listT(2,i)=2; %VIP�˿�.
        listT(3,i)=vpro;
    end
    listT(1,i)=x;
end
%SCF����.
listD3=zeros(1,nD); %SCF������ͨ���ڷ����βʱ�䣨���ܼ�������ܴ�ֵ��.
listD3b=zeros(1,nD); % SCF������ͨ���ڷ�����ʵ��βʱ��.
listG3=zeros(1,nF); %SCF���Զ๦�ܴ��ڷ����βʱ��.
kD3=0; %��ͨ�ͻ���Ŀ��
kG3=0;  %VIP�ͻ���Ŀ��
for i=1:n
   if listT(2,i)==1
       kD3=kD3+1;
   else
       kG3=kG3+1;
   end
end 
while sum(listT(2,:))>0.5 %�����л��пͻ��ȴ���
    relT3=listD3(1);
     k=1;
     window=1; % ���ڱ�ǣ�1��ͨ���ڣ�2�๦�ܴ��ڡ�
    for j=1:nD % ����ͨ�����в��������������.  (������k=find(listD3==min(listD3))��ʵ����һ����)
       if listD3(j)<relT3
           relT3=listD3(j);
           k=j;
           window=1;
       end
    end
    for j=1:nF % �����ڶ๦�ܴ����в��������������.  (ͬ�Ͽ�����k=find(listG3==min(listG3))��ʵ��)
       if listG3(j)<relT3
            relT3=listG3(j);
            k=j;
            window=2;
       end
    end
    if window==1 %�������ô���Ϊ��ͨ���ڡ�
        value=0; %������ͨ�˿��Ƿ������ϵı�־,0Ϊ���,1�����л�����ͨ�˿�.
        for i=1:n
           if listT(2,i)==1
               value=1;
           end
        end
        if value==0   %��ͨ������Ϣ. (����ֻ���ô���k��Ϣ,���Ըĳ���������ͨ������Ϣ!)
           listD3b(k)=listD3(k); %��¼��ʵ����ʱ��
           listD3(k)=n*1000; %����һ����ִ����������ֵ����
        else
           for i=1:n
              if listT(2,i)==1
                   if relT3<=listT(1,i)
                       listT(3,i)=listT(1,i)+listT(3,i);
                       listT(2,i)=0;
                   end
                   if relT3>listT(1,i)
                       listT(3,i)=relT3+listT(3,i);
                       listT(2,i)=0;
                       waitTD3=waitTD3+relT3-listT(1,i);
                   end
                   listD3(k)=listT(3,i);
                   break
                end
           end
       end
   end
   if window==2 %�������ô���Ϊ�๦�ܴ��ڡ�
      value=1; % �б�ֵ: 1��ʾû�б�����Ķ�����û��VIP��relT3֮ǰ����,���,������ڿ��Է���
%��ͨ�˿�.
       for i=1:n
           if listT(2,i)==2 & listT(1,i)<=relT3
               listT(3,i)=relT3+listT(3,i);
               listT(2,i)=0;
               listG3(k)=listT(3,i);
               value=0;
               waitTG3=waitTG3+relT3-listT(1,i);
               break
           end
       end
       if value==1
           for i=1:n
               if listT(2,i)~=0
                   if listT(1,i)>relT3
                       listT(3,i)=listT(1,i)+listT(3,i);
                       %listT(2,i)=0;   %�Ƶ�break��ǰ����
                   else
                      listT(3,i)=relT3+listT(3,i);
                      if listT(2,i)==1
                          waitTD3=waitTD3+relT3-listT(1,i);
                      else
                          waitTG3=waitTG3+relT3-listT(1,i);   % �˾��ƺ���Զ���ᱻִ��!
                      end
                      %listT(2,i)=0;    %�Ƶ�break��ǰ����
                   end
                   listT(2,i)=0;
                   listG3(k)=listT(3,i);
                   break
               end
           end
       end
   end
end
for i=1:nD %��ԭ��ʵ����ʱ�䡣
    if listD3b(i)>1
        listD3(i)=listD3b(i);
    end
end
AverwaitD3 = AverwaitD3 + waitTD3 / kD3; %��ͨ�ͻ�ƽ���ȴ�ʱ�䡣
AverwaitG3 = AverwaitG3 + waitTG3 / kG3; %VIP�ͻ�ƽ���ȴ�ʱ�䡣
AlistD3 = AlistD3 + listD3; %��ͨ���ڷ����βʱ��.
AlistG3 = AlistG3 + listG3; %�๦�ܴ��ڷ����βʱ��.
end % end of each simulation
AverwaitD3 = AverwaitD3 / numSimulation 
AverwaitG3 = AverwaitG3 / numSimulation 
AlistD3 = AlistD3 / numSimulation 
AlistG3 = AlistG3 / numSimulation
