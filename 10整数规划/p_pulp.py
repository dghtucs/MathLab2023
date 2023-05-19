from pulp import *

# 创建问题
prob = LpProblem("Integer Programming Problem", LpMinimize)

# 定义变量
x = LpVariable("x", lowBound=0, cat='Integer')
y = LpVariable("y", lowBound=0, cat='Integer')

# 定义目标函数
prob += 2*x + 3*y

# 定义约束条件
prob += 4*x + 3*y >= 12
prob += 2*x + 5*y >= 10

# 求解问题
prob.solve()

# 打印结果
print("Optimization Status:", LpStatus[prob.status])
print("Optimal Solution:")
for v in prob.variables():
    print(v.name, "=", v.varValue)
print("Optimal Objective Value:", value(prob.objective))
