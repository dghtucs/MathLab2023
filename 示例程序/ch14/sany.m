function ff=sany(t,k,n,r)
p=19600/k/n/r^2;
q=1-exp(-k*n*r^2*t/2000);
ff=500-p*t+p^2*q/9.8;


