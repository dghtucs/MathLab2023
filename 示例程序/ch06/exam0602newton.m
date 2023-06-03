clear all
x0=1;y0=1;n=10;tol=1e-6;
x(1)=x0;y(1)=y0;
i=1;u=[1 1];k(1)=1;
while(norm(u)>tol*norm([x(i),y(i)]'))
    A=2*[x(i),y(i);x(i),-y(i)];
    b=[4-x(i)^2-y(i)^2,1-x(i)^2+y(i)^2]';
    u=A\b;
    x(i+1)=x(i)+u(1);
    y(i+1)=y(i)+u(2);
    i=i+1;k(i)=i;
    if(i>n)error('n is full');
    end
end
[k',x',y']
