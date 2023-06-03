% Calculate Pi = 3.14159...
clear all;
n=100000;
x=rand(2,n); % unifrnd(2*n,0,1)
k=0;
for i=1:n
    if x(1,i)^2+x(2,i)^2<=1
        k=k+1;
    end
end
p=4*k/n
