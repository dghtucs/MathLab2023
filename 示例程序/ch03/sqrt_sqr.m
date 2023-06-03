function y=sqrt_sqr(a,n)
% a=4;  n=60; 
for k=1:n
    A=subfunction1(a,k);
    A=subfunction2(A,k);
    B(k)=A;
end
y=[[1:k]',B']
plot([1:k]',B')
grid

function y=subfunction1(x,k)
for i=1:k
    x=sqrt(x);
end
y=x;

function y=subfunction2(x,k)
for i=1:k
    x=x*x;
end
y=x;
