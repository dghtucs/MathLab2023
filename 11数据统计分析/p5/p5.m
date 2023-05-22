function hitProbability = calculateHitProbability()

% 参数设定
mu = [0, 0];       % 均值
sigma = [80^2, 80*50*0.4; 80*50*0.4, 50^2]; % 协方差矩阵
target_radius = 100; % 目标区域半径
nSimulations = 1e6; % 模拟次数

% 使用蒙特卡罗法模拟炮弹落点
R = chol(sigma);   % Cholesky分解得到上三角矩阵
Z = repmat(mu,nSimulations,1) + randn(nSimulations,2)*R;

% 计算落点到目标中心的距离
distances = sqrt(Z(:,1).^2 + Z(:,2).^2);

% 计算命中目标区域的次数
hitCounts = sum(distances <= target_radius);

% 计算命中概率
hitProbability = hitCounts / nSimulations;

end
