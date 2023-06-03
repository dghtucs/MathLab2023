% comparing different algorithms: using gradient vector
format short e
x0=[-1.9,2];
'---case1: bfgs, hybrid 2,3 poly-------'
opt1=optimset('LargeScale','off', 'MaxFunEvals',1000,'GradObj','on');
[x1,v1,exit1,out1]=fminunc(@exam0705grad,x0,opt1)
pause
'---case2:  dfp, hybrid 2,3 poly-------'
fopt=optimset(opt1,'HessUpdate','dfp');
[x2,v2,exit2,out2]=fminunc(@exam0705grad,x0,fopt)
pause
'---case3: gillmurray, hybrid 2,3 poly-------'
fopt=optimset(opt1,'HessUpdate','gillmurray');
[x3,v3,exit3,out3]=fminunc(@exam0705grad,x0,fopt)
pause
'---case4: steep, hybrid 2,3 poly-------'
fopt=optimset(opt1,'HessUpdate','steepdesc');
[x4,v4,exit4,out4]=fminunc(@exam0705grad,x0,fopt)
pause
'---case5: bfgs, 3rd poly-------'
opt2=optimset(opt1,'LineSearchType','cubicpoly');
[x5,v5,exit5,out5]=fminunc(@exam0705grad,x0,opt2)
pause
'---case6:  dfp, 3rd poly-------'
fopt=optimset(opt2,'HessUpdate','dfp');
[x6,v6,exit6,out6]=fminunc(@exam0705grad,x0,fopt)
pause
'---case7: gillmurray, 3rd poly-------'
fopt=optimset(opt2,'HessUpdate','gillmurray');
[x7,v7,exit7,out7]=fminunc(@exam0705grad,x0,fopt)
pause
'---case8: steep, 3rd poly-------'
fopt=optimset(opt2,'HessUpdate','steepdesc');
[x8,v8,exit8,out8]=fminunc(@exam0705grad,x0,fopt)
pause
'++++    results of solutions ++++++'
solutions=[x1;x2;x3;x4;x5;x6;x7;x8];
funvalues=[v1;v2;v3;v4;v5;v6;v7;v8];
iterations=[out1.funcCount;out2.funcCount;out3.funcCount;out4.funcCount;out5.funcCount;out6.funcCount;out7.funcCount;out8.funcCount];
[solutions,funvalues,iterations]

