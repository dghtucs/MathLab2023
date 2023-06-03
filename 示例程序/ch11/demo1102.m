% 读入数据
clear all; clc; clf;
A = dlmread('bankdata.m');   %矩阵
X = [A(1,:) A(2,:) A(3,:) A(4,:) A(5,:)];     % 行向量
[N,Y]=hist(X,20)                                 % 频数表
hist(X,20),                                      % 直方图
x1=mean(X),x2=median(X)                       % 各个统计量
x3=range(X),x4=std(X)
x5=skewness(X),x6=kurtosis(X)
