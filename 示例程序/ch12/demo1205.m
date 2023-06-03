%  10个含硫量数据
x=[0.0864 0.0744 0.0864 0.0752 0.0760...
    0.0954 0.0936 0.1016 0.0800 0.0880];            

mu0=0.08; mu2=0.086; n=10;
alpha=0.05;
talpha=tinv(1-alpha,n-1);
s=std(x);
gap=(mu2-mu0)/(s/sqrt(n));
beta=tcdf(talpha-gap,n-1)
