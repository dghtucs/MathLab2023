clc; clear all;
% 给出横坐标X0;
X0=[ 4.0  6.0  5.2  5.2  4.0  4.0  4.5  6.0  9.0 10.0 12.0 12.5 12.0 11.0 10.0 10.0  9.5 10.0 12.0 14.0 ...
    15.5 16.0 17.0 20.0 20.0 20.0 19.0 18.5 19.5 21.0 20.5 20.5 23.0 23.5 24.0 24.5 24.5 25.0 25.5 27.0 ...
    27.5 28.0 31.0 32.0 33.0 35.0 36.0 37.5 37.0 36.5 35.0 34.0 32.5 34.0 33.5 33.0 32.5 33.5 35.0 35.5 ...
    36.0 35.0 34.0 32.5 30.0 27.0 26.0 25.5 25.5 27.0 28.5 28.5 28.0 27.5 26.5 26.0 25.0 22.0 21.5 20.5 ...
    19.5 20.5 20.0 19.0 18.0 17.0 17.0 16.8 15.5 11.5 10.0  9.5  9.0  8.0  8.0  5.2  5.2  4.8  4.8 4.0];
% 给出纵坐标Y0;
Y0=[ 7.0  8.0  9.0 10.0 11.0 12.0 13.0 14.0 15.0 16.0 17.0 18.0 19.0 20.0 21.0 22.0 23.0 24.0 25.0 25.0 ...
    26.0 27.0 28.0 28.5 29.0 30.0 31.0 31.5 32.0 31.0 32.0 33.0 33.0 34.0 34.5 34.0 33.0 32.0 31.0 30.0 ...
    29.0 28.0 26.5 27.0 26.0 26.5 26.0 26.0 25.5 25.8 24.0 24.5 24.0 22.5 22.0 21.5 21.5 19.0 18.0 17.0 ...
    16.0 15.0 14.0 13.5 13.0 13.0 12.0 11.0 10.0  9.0  8.0  7.0  6.0  5.0  4.0  3.0  3.5  3.2  3.0  2.0 ...
    1.5  1.0  0.0  0.2  1.0  1.5  2.0  3.0  2.7  2.5  2.0  1.8  2.0  3.0  3.4  3.4  4.0  5.0  6.5  7.0];
% 梯形公式计算面积;
S=(5.25)^2*trapz(X0,Y0) 
