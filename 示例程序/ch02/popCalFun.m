function x = popCalFun(t,r,x0,xm)
x=xm/(1+(xm/x0-1)*exp(-r*t));