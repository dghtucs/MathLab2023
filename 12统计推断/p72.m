% 去掉患胃溃疡病人组的最后 5 个数据
patients_corrected = patients(1:end-5);

% 进行独立样本t检验
[h,p] = ttest2(patients_corrected, normal);

% 显示结果
if h == 0
    fprintf('No significant difference in lysozyme levels between corrected patients with gastric ulcers and normal people (p = %0.3f).\n', p);
else
    fprintf('Significant difference in lysozyme levels between corrected patients with gastric ulcers and normal people (p = %0.3f).\n', p);
end
