% ��������
clear all; clc; clf;
A = dlmread('bankdata.m');   %����
X = [A(1,:) A(2,:) A(3,:) A(4,:) A(5,:)];     % ������
[N,Y]=hist(X,20)                                 % Ƶ����
hist(X,20),                                      % ֱ��ͼ
x1=mean(X),x2=median(X)                       % ����ͳ����
x3=range(X),x4=std(X)
x5=skewness(X),x6=kurtosis(X)
