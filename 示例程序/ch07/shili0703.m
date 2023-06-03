% nonlinear least square for plane location
% optimal value should be x=[978.307,723.9838];
X=[746 629 1571 155];
Y=[1393 375 259 987];
theta=[161.2,45.1,309.0-360]*2*pi/360;
sigma=[0.8,0.6,1.3]*2*pi/360;
d4=864.3;
sigma4=2;
x0=[900,700];
[x,norm,res,exit,out]=lsqnonlin(@shili0703fun,x0,[],[],[],X,Y,theta,sigma,d4,sigma4)


