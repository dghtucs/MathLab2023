l = 2;  % 钢材规定的长度
sigma = 20;  % 粗轧后钢材长度的标准差

% 定义目标函数
objective = @(m) getWaste(m, l, sigma);

% 定义约束条件：m >= 0
lb = 0;  % m 的下界

% 使用 fmincon 进行优化
m0 = 1;  % 初始猜测值
m = fmincon(objective, m0, [], [], [], [], lb);

% 输出结果
disp(['使得总浪费最小的粗轧钢材长度均值 m = ', num2str(m)]);

% 目标函数：计算总浪费
function waste = getWaste(m, l, sigma)
    % 计算粗轧得到的钢材长度的正态分布标准差
    var_c = sigma^2;
    
    % 计算浪费的概率
    p_waste = normcdf(l, m, sqrt(var_c)) + (1 - normcdf(l, m, sqrt(var_c)));
    
    % 计算总浪费
    waste = p_waste * l;
end
