% 实验1例1:汽车刹车距离
M=dlmread('car_data.txt','\t');
v=M(1,:);           d=M(2,:);
plot(v,d,'bo');     axis([20,140,0,200]);
pause               % hold on;

plot(v,d,'bo',v,d,'g-');  axis([20,140,0,200]);
pause               % plot(v,d,'g-'); hold off;

% d = k1 * v + k2 * v^2;  <==> d = [k1,k2] * [v;v^2];
v=v*1000/3600; v2 = v.^2;     k=d/[v;v2]
d_hat = k * [v;v2];           [v',d',d_hat']

% d = k1 * v + k2 * v^2;  <==> d/v = [k1,k2]*[1,v];
% 请你试一试,结果一样吗? 想一想为什么?
