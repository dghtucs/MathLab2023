% 计算平均值和标准差
meanHeight = mean(height);
stdDevHeight = std(height);
meanWeight = mean(weight);
stdDevWeight = std(weight);

% 计算置信区间
confidence = 0.95;
df = length(height) - 1; % 自由度
tValue = tinv((1+confidence)/2, df); % t值

lowerHeight = meanHeight - tValue*stdDevHeight/sqrt(length(height));
upperHeight = meanHeight + tValue*stdDevHeight/sqrt(length(height));
lowerWeight = meanWeight - tValue*stdDevWeight/sqrt(length(weight));
upperWeight = meanWeight + tValue*stdDevWeight/sqrt(length(weight));

fprintf('The estimated average height is between %0.2f cm and %0.2f cm.\n', lowerHeight, upperHeight);
fprintf('The estimated average weight is between %0.2f kg and %0.2f kg.\n', lowerWeight, upperWeight);
