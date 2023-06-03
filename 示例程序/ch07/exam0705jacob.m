function [f,g]=exam0705jacob(x)
f=[10*(x(2)-x(1)^2),1-x(1)];
if nargout > 1   % fun called with 2 output arguments
   g=[-20*x(1),10;-1,0];   
end
