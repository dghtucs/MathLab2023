clear all; clc;

k=18.5;n=6;r=3;
t0=30;
t=fzero(@sany,t0,[],k,n,r)
p=19600/k/n/r^2;
q=1-exp(-k*n*r^2*t/2000);
v=p*q

% µÃµ½t = 27.4867   v = 19.6196
