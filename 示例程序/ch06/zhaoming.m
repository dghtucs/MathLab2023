% C'(x), i.e., derivative of C(x)
function y=zhaoming(x,p1,p2,h1,h2,s)
y=-3*p1*h1*x/(h1^2+x^2)^(5/2)+3*p2*h2*(s-x)/(h2^2+(s-x)^2)^(5/2); 
