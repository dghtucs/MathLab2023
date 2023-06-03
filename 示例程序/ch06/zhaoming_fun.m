% function of C'(x)
function y=zhaoming_fun(x,p1,p2,h1,h2,s)
y=p1*h1/(h1^2+x^2)^(3/2)+p2*h2/(h2^2+(s-x)^2)^(3/2);

