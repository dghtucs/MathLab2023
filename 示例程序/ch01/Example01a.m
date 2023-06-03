clc; clear all
t=1:12;%[1	2	3	4	5	6	7	8	9	10	11	12];
c=[82	77	68	51	41	38	35	28	25	18	15	12];
plot(t,c,'+')
pause
c1=log(c);
plot(t,log(c),'+')
% semilogy(t,c,'+')

