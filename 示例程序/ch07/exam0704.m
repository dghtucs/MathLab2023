clear all, clc
a=10;b=1;x0=[1,1]; %初始值
opt=optimset('fminunc'); %程序fminunc缺省的控制参数
%opt=optimset(opt,'Disp','iter'); %设定输出中间结果
%也可直接写成opt.Display='iter' （此时Display不能简写，且区分大小写字母）
opt=optimset(opt,'tolx',1e-16,'tolf',1e-16); %设定控制精度
[x,f,ef,out]=fminunc(@exam0702fun,x0,opt,a,b)
%设定控制精度后的结果与教材上(Matlab6.5.1的结果)不同