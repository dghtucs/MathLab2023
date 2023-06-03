function f=sanf(k,t)
    f=500-980*t/3/k+98000*(1-exp(-3*k*t/100))/9/k^2;
end

