l = 2 * m;  % 规定长度
sigma = 20;  % 方差

% 定义目标函数
objective = @(m) (l - m).^2 / (2 * sigma^2);  % 每粗轧一根钢材的浪费

% 定义约束条件
nonlcon = @(m) m - l;  % 约束条件 m >= l

% 设置初始值
x0 = l;  % 初始值为规定长度

% 进行优化
m_opt = fmincon(objective, x0, [], [], [], [], l, [], nonlcon);

% 打印结果
disp(['最优的粗轧钢材长度均值 m = ', num2str(m_opt)]);
