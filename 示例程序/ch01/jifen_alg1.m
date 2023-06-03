clc, clear all
N=100;
E(1)=1
for n=2:N
    E(n)=exp(1.0)-n*E(n-1);
end
plot(E,'b*');
