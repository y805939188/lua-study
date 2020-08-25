require "test"
-- 可以引入包 不过是动态引入 会把 test 中的东西都执行一遍
print('module test 1', module.test1)
print('module test 2', module.sum(6, 8))
