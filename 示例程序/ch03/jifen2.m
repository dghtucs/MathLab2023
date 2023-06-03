a=7782.5;b=7721.5;
h=pi/10;
t=0:h:pi/2;
z=weixing(t,a,b);
T1=4*trapz(t,z)
T2=4*trapz(z)*h
S1=4*quad(@weixing,0,pi/2,1e-6,[],a,b)
S2=4*quad(@weixing,0,pi/2,1e-6,1,a,b)         % trace
S3=4*quadl(@weixing,0,pi/2,1e-6,[],a,b)
[S4,fn]=quadl(@weixing,0,pi/2,1e-6,1,a,b)     
% output the function evaluation, and with trace
S4=4*S4