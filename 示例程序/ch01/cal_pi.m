% Calculate Pi = 3.14159...
clear all; clc
n=10000000;
x=rand(2,n); % unifrnd(0,1,2,n)
k=0;
for i=1:n
    if x(1,i)^2+x(2,i)^2<=1
        k=k+1;
    end
end
k,n,p=4*k/n
