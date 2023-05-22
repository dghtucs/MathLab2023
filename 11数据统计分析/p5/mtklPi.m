n=1000000000;
x = rand(2,n);
k = 0;
for i=1:n
    if x(1,i)^2+x(2,i)^2 <= 1
        k=k+1;
    end
end
p = 4*k/n