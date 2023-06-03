clear all;clc;
x1=1;x2=8;
f=inline('3*sin(x)+x');
fplot(f,[0,12]);
[x,fv]=fminbnd(f,x1,x2);
[x1,fv1]=fminbnd('3*sin(x)+x',1,8);
[x2,fv2]=fminbnd(@(x) 3*sin(x)+x,1,8);
[x3,fv3]=fminbnd(inline('3*sin(x)+x'),8,12); 
p.objective='3*sin(x)+x';
p.solver='fminbnd';
p.x1=8;
p.x2=12;
p.options=[];
[x4,fv4]=fminbnd(p); 
[x,x1,x2,x3,x4;fv,fv1,fv2,fv3,fv4]