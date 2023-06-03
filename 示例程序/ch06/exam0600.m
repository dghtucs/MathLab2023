fplot('x^6-2*x^4-6*x^3-13*x^2+8*x+12',[-2,2.5])
hold on
fplot('0',[-2,2.5],'r')
grid on
hold off

pause
fplot('x*x-2*x-4*log(x)',[0,4,-3,1])
hold on
fplot('0',[0,4],'r')
grid on
hold off