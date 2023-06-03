clear
ep(100)=0
for n=100:-1:2
    ep(n-1)=(exp(1.0)-ep(n))/n;
end
plot(ep,'b*');
