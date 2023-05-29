% 导入数据
height = [172 171 166 160 155 173 166 170 167 173 178 173 163 165 170 163 ... 
    172 182 171 177 169 168 168 175 176 168 161 169 171 178 177 170 173 172 170 ...
    172 177 176 175 184 169 165 164 173 172 169 173 173 166 163 170 160 165 ...
    177 169 176 177 172 165 166 171 169 170 172 169 167 175 164 166 169 167 ...
    179 176 182 186 166 169 173 169 171 167 168 165 168 176 170 158 165 172 169 ...
    169 172 162 175 174 167 166 174 168 170];
weight = [75 62 62 55 57 58 55 63 53 60 60 73 47 66 60 50 57 63 59 64 55 ...
    67 65 67 64 50 49 63 61 64 66 58 67 59 62 59 58 68 68 70 64 52 59 ...
    74 69 52 57 61 70 57 56 65 58 66 63 60 67 56 56 49 65 62 58 64 58 ...
    72 76 59 63 54 54 62 63 69 77 76 72 59 65 71 47 65 64 57 57 57 51 ...
    62 53 66 58 50 52 75 66 63 50 64 62 59];

% 可视化数据：散点图和直方图
subplot(2,2,1); scatter(height, weight); xlabel('Height'); ylabel('Weight'); title('Scatter plot of height and weight');
subplot(2,2,2); hist(height); xlabel('Height'); ylabel('Frequency'); title('Histogram of height');
subplot(2,2,3); hist(weight); xlabel('Weight'); ylabel('Frequency'); title('Histogram of weight');

% 正态性检验
[hHeight, pValueHeight] = kstest((height-mean(height))/std(height));
[hWeight, pValueWeight] = kstest((weight-mean(weight))/std(weight));

if hHeight == 0
    disp('Height data follows a normal distribution');
else
    disp('Height data does not follow a normal distribution');
end

if hWeight == 0
    disp('Weight data follows a normal distribution');
else
    disp('Weight data does not follow a normal distribution');
end
