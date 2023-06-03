M=dlmread('shili1101data2.m');
x=[M(1,:), M(2,:), M(3,:),M(4,:),M(5,:)]
y=[M(6,:), M(7,:), M(8,:),M(9,:),M(10,:),M(11,:),M(12,:),M(13,:),M(14,:),M(15,:)];
% mu_y和sigma_y的结果与书中不完全相同(有很小的误差) 
mu_y=mean(y)
sigma_y=std(y)
[h,sig,ci]=ttest2(x,y)