% nonlinear least square for banana function
x0=[-1.9,2];
opt1=optimoptions(@lsqnonlin,'MaxFunEvals',1000);
[x1,norm1,res1,exit1,out1]=lsqnonlin('exam0705jacob',x0,[],[],opt1)
opt2=optimoptions(opt1,'Algorithm','Levenberg-Marquardt');
[x2,norm2,res2,exit2,out2]=lsqnonlin('exam0705jacob',x0,[],[],opt2)
