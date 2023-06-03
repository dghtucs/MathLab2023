clc, clear all

N=100;
E(N)=0;
for n=N:-1:2
    E(n-1)=(exp(1.0)-E(n))/n;
end
plot(E,'b*');
