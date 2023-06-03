x = normrnd(5,1,100,1);
m = mean(x),
[h1,sig1,ci1] = ttest(x,5.2,0.05,-1)
[h2,sig2,ci2] = ttest(x,5.2,0.01,-1)

