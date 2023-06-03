clear all, clc
n = 1000000;
a = 2; b = 1;
x = a / 2 * rand(n,1);
phi = pi * rand(n,1); 
m=0;
for i = 1:n
    if ( x(i) < b / 2 * sin( phi(i) ) )
        m=m+1;
    end
end
pi_simu = 2 *b * n / a / m;
pi_simu