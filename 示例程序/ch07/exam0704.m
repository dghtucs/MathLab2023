clear all, clc
a=10;b=1;x0=[1,1]; %��ʼֵ
opt=optimset('fminunc'); %����fminuncȱʡ�Ŀ��Ʋ���
%opt=optimset(opt,'Disp','iter'); %�趨����м���
%Ҳ��ֱ��д��opt.Display='iter' ����ʱDisplay���ܼ�д�������ִ�Сд��ĸ��
opt=optimset(opt,'tolx',1e-16,'tolf',1e-16); %�趨���ƾ���
[x,f,ef,out]=fminunc(@exam0702fun,x0,opt,a,b)
%�趨���ƾ��Ⱥ�Ľ����̲���(Matlab6.5.1�Ľ��)��ͬ