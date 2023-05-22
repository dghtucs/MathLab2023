function optimal_n = calculateOptimalN()

% 参数设定
mu = 2000;     % 需求量均值
sigma = 50;    % 需求量标准差
A = 0.5;       % 批发价参数
K = 50000;     % 批发价参数
b = 0.5;       % 零售价
c = 0.35;      % 退回价
n_range = 1900:2100; % 可能的购进数量范围

max_profit = -Inf;
optimal_n = 0;

% 计算正态分布的概率密度函数
pd = makedist('Normal', mu, sigma);

% 遍历可能的购进数量
for n = n_range
    a = A*(1-n/K);   % 批发价

    % 计算预期利润
    expected_profit = integral(@(x) profit(x, n, a, b, c).*pdf(pd,x), -Inf, Inf);

    % 如果找到更高的利润，更新最大利润和对应的购进数量
    if expected_profit > max_profit
        max_profit = expected_profit;
        optimal_n = n;
    end
end

end

% 计算利润
function p = profit(x, n, a, b, c)
    if x <= n
        p = x*(b - a);
    else
        p = n*(b - a) + (x - n)*(c - a);
    end
end
