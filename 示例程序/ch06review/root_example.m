p=poly(1:20);
ep=zeros(1,21);
ep(3)=1.0e-10;
re=roots(p+ep)
plot(re,'b+');
hold on
plot(1:20,0,'r*');
hold off
