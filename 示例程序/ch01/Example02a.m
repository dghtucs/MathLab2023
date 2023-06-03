clc; clear all
x0=100;y0=10;
x(1)=110;
a=0.1; % 0.1, 0.24;
b=5;
for k=1:10
    y(k)=y0-a*(x(k)-x0);
    x(k+1)=x0+b*(y(k)-y0);
end
subplot(1,2,1)
plot(x); 
subplot(1,2,2)
plot(y);
