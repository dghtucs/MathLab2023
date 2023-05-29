% 问题参数
n = 50; % 样本大小
p = 0.90; % 甲方承诺的合格率
x = 43; % 观察到的合格产品数量

% 计算在x-1或更少成功的概率，然后用1减去它来得到至少x成功的概率
prob_x_or_more = 1 - binocdf(x-1, n, p);

% 检查乙方是否应该接受这批货物，如果prob_x_or_more大于或等于置信概率，则接受
confidence_level = 0.95;
if prob_x_or_more >= confidence_level
    fprintf('乙方应接受这批货物。');
else
    fprintf('乙方不应接受这批货物。');
end
