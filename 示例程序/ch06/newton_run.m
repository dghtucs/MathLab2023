clear all
x=newton(inline('x^3-2*x-5'),inline('3*x^2-2'),0.5,100,1e-6)
[xx,k]=newton(inline('x^3-2*x-5'),inline('3*x^2-2'),0.5,100,1e-6)