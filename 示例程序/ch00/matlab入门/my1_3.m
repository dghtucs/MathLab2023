a = magic(3)

a(3,:)
a(:,2)

a(1:2,:)
a(:,2:3)
% 第2行到最后，第一列第三列
a(2:end,[1,3])
% 删除
a(:,1) = []

% 拼接
e = [a,eye(3)]

% 竖向拼接
f = [a;eye(5,2)]











