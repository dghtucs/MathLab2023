% newton.m
function [y,z]=newton(fv,df,x0,n,tol)
x(1)=x0; b=1; k=1;
while or(k==1,abs(b)>tol*abs(x(k)))
    x(k+1)=x(k)-feval(fv,x(k))/feval(df,x(k));
    b=x(k+1)-x(k);
    k=k+1;
    if(k>n)
        error('Error: Reached maximum iteration times');
        break;
    end
end
y=x(k-1);
if nargout>1
    z=k-1;
end