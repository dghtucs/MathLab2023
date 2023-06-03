% nonlinear least square for banana function
x0=[-1.9,2];
opt1=optimset('LargeScale','off', 'MaxFunEvals',1000);
[x1,norm1,res1,exit1,out1]=lsqnonlin('exam0705lsqfun',x0,[],[],opt1)
opt2=optimset(opt1,'LevenbergMarquardt','off');
[x2,norm2,res2,exit2,out2]=lsqnonlin('exam0705lsqfun',x0,[],[],opt2)

