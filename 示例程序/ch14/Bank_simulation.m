%数学实验(清华大学出版社,第2版),14.4节所附程序，也就是表14.12中的情况.
%（以下程序为下列情况设计：SCF服务策略，p=10%，
%                                             窗口数s1=5，s2=3，客户数量n=500）
clear; clc; format short;
numSimulation=100; % 5次模拟
n=500; %顾客到达总人数.
pr=0.1; %表示VIP与普通客户比例.
lamda=2;
mu1=1/4;
mu2=1/7;
nD=5; % 普通窗口数,只能服务普通客户.
nF=3; % 多功能窗口数,可以服务VIP和普通客户.
AverwaitD3=0; %普通客户平均等待时间初值。
AverwaitG3=0; %VIP客户平均等待时间初值。
AlistD3=zeros(1,nD); %普通窗口服务队尾平均时间初值.
AlistG3=zeros(1,nF); %多功能窗口服务队尾平均时间初值.
for t=1:numSimulation % 模拟次数, start of each simulation
x=0;%顾客初始到达时间.
arrv=exprnd(1/lamda,1,n); %产生均值为1/lamda(=0.5)的指数分布随机数，数组大小：1行，n列，表示顾客到达时间间隔。
listT=zeros(3,n); %顾客队列情况.第一行为顾客到达时间,第二行标记顾客类型,1为普通客户,2为VIP,
%计算过程中将改变为0,表示已经被服务,第三行开始读入时为服务时间,顾客被服务后用完工时间替代.
waitTD3=0; %SCF策略普通窗口等待时间初值
waitTG3=0; %SCF策略多功能窗口等待时间初值
for i=1:n
    x=x+arrv(i); %第i个顾客到达时间.所有顾客到达服从同一指数分布.
    p=unifrnd(0,1); %产生(0,1)区间一个随机数.
    if p>=pr
        dpro=exprnd(1/mu1); %产生均值为4的指数分布随机数，数组大小：1行，n列,表示普通顾客需要的服%务时间。
        listT(2,i)=1;   %普通顾客.
        listT(3,i)=dpro;
    else
        vpro=exprnd(1/mu2); %产生均值为7的指数分布随机数，数组大小：1行，n列,表示VIP顾客需要的服%务时间。
        listT(2,i)=2; %VIP顾客.
        listT(3,i)=vpro;
    end
    listT(1,i)=x;
end
%SCF策略.
listD3=zeros(1,nD); %SCF策略普通窗口服务队尾时间（可能加入人造很大值）.
listD3b=zeros(1,nD); % SCF策略普通窗口服务真实队尾时间.
listG3=zeros(1,nF); %SCF策略多功能窗口服务队尾时间.
kD3=0; %普通客户数目。
kG3=0;  %VIP客户数目。
for i=1:n
   if listT(2,i)==1
       kD3=kD3+1;
   else
       kG3=kG3+1;
   end
end 
while sum(listT(2,:))>0.5 %队列中还有客户等待。
    relT3=listD3(1);
     k=1;
     window=1; % 窗口标记：1普通窗口，2多功能窗口。
    for j=1:nD % 在普通窗口中查找最早结束窗口.  (可以用k=find(listD3==min(listD3))简单实现这一功能)
       if listD3(j)<relT3
           relT3=listD3(j);
           k=j;
           window=1;
       end
    end
    for j=1:nF % 继续在多功能窗口中查找最早结束窗口.  (同上可以用k=find(listG3==min(listG3))简单实现)
       if listG3(j)<relT3
            relT3=listG3(j);
            k=j;
            window=2;
       end
    end
    if window==1 %最早闲置窗口为普通窗口。
        value=0; %给出普通顾客是否服务完毕的标志,0为完毕,1队列中还有普通顾客.
        for i=1:n
           if listT(2,i)==1
               value=1;
           end
        end
        if value==0   %普通窗口休息. (以下只是让窗口k休息,可以改成让所有普通窗口休息!)
           listD3b(k)=listD3(k); %记录真实结束时间
           listD3(k)=n*1000; %赋予一个充分大的数（人造值）。
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
   if window==2 %最早闲置窗口为多功能窗口。
      value=1; % 判别值: 1表示没有被服务的队列中没有VIP在relT3之前到达,因此,这个窗口可以服务
%普通顾客.
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
                       %listT(2,i)=0;   %移到break行前即可
                   else
                      listT(3,i)=relT3+listT(3,i);
                      if listT(2,i)==1
                          waitTD3=waitTD3+relT3-listT(1,i);
                      else
                          waitTG3=waitTG3+relT3-listT(1,i);   % 此句似乎永远不会被执行!
                      end
                      %listT(2,i)=0;    %移到break行前即可
                   end
                   listT(2,i)=0;
                   listG3(k)=listT(3,i);
                   break
               end
           end
       end
   end
end
for i=1:nD %还原真实结束时间。
    if listD3b(i)>1
        listD3(i)=listD3b(i);
    end
end
AverwaitD3 = AverwaitD3 + waitTD3 / kD3; %普通客户平均等待时间。
AverwaitG3 = AverwaitG3 + waitTG3 / kG3; %VIP客户平均等待时间。
AlistD3 = AlistD3 + listD3; %普通窗口服务队尾时间.
AlistG3 = AlistG3 + listG3; %多功能窗口服务队尾时间.
end % end of each simulation
AverwaitD3 = AverwaitD3 / numSimulation 
AverwaitG3 = AverwaitG3 / numSimulation 
AlistD3 = AlistD3 / numSimulation 
AlistG3 = AlistG3 / numSimulation
