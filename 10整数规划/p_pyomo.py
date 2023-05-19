from pyomo.environ import *

# 创建模型
model = ConcreteModel()

# 定义变量
model.x = Var(within=NonNegativeReals)
model.y = Var(within=NonNegativeReals)

# 定义目标函数
model.obj = Objective(expr=2*model.x + 3*model.y, sense=minimize)

# 定义约束条件
model.con1 = Constraint(expr=4*model.x + 3*model.y >= 12)
model.con2 = Constraint(expr=2*model.x + 5*model.y >= 10)

# 求解问题
solver = SolverFactory('glpk')
results = solver.solve(model)

# 打印结果
print("Solver Status:", results.solver.status)
print("Optimization Status:", results.solver.termination_condition)
print("Optimal Solution:")
print("x =", model.x.value)
print("y =", model.y.value)
print("Optimal Objective Value:", model.obj.expr())
