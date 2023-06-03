clear
ep(1)=1
for n=2:30
    ep(n)=exp(1.0)-n*ep(n-1)
end
plot(ep,'b*');
