% 旧的平均身高和体重
oldMeanHeight = 167.5;
oldMeanWeight = 60.2;

% 进行t检验
[hHeightChange, pValueHeightChange] = ttest(height, oldMeanHeight);
[hWeightChange, pValueWeightChange] = ttest(weight, oldMeanWeight);

if hHeightChange == 0
    disp('There is no significant change in average height.');
else
    disp('There is a significant change in average height.');
end

if hWeightChange == 0
    disp('There is no significant change in average weight.');
else
    disp('There is a significant change in average weight.');
end
