%Example: solve

x1=solve('x1^2+x2^2-4=0','x1^2-x2^2-1=0')
% or
x2=solve('x1^2+x2^2-4=0','x1^2-x2^2-1=0','x1','x2')

% error:
x3=solve('x1^2+x2^2-4=0','x1^2-x2^2-1=0','x1')
