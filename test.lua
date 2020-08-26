function test1()
  a = 88 -- 全局
  local b = 66 -- 局部
  print(1, b) -- 66
end

test1()
print(2, a) -- 88
print(3, b) -- nil

print(type(10)) -- number
print(type(true)) -- boolean
print(type(test1)) -- function
print(type("ding1", 'ding2')) -- string

str1 = "ding1".."ding2" -- ..表示字符串连接
print(str1)
num1, num2, num3 = 6, 8 -- 赋值
print(num1, num2, num3) -- num3 是 nil

-- 算术运算符和关系运算符和其他语言基本一样
print(1~=2) -- 除了这个 不等于
-- 逻辑运算符和 python 一样
print(1 and 2) -- 2
print(6 or 8) -- 6
print(not false) -- true

-- 其他运算符
str2 = "ding1"
print(#str2) -- 5 #是求字符串长度

-- if语句
test2 = 3
if (test2 == 1) then
  print("niupi1")
elseif (test2 == 2) then
  print("niupi2")
else
  print("niupi3")
end

-- 循环语句
test3 = 0
while (true) do
  print('while', test3)
  test3 = test3 + 1
  if (test3 == 6) then break end
end

repeat -- 重复 xxx
  print('repeat', test3)
  test3 = test3 + 1
until(test3 > 10) -- 知道 yyy 结束

for a = 1, 10, 2 do -- a = 1 循环到 10 结束 步长是 2 step 不写默认是 1
  print(a) -- 1 3 5 7 9
end

-- 数组
-- lua 的数组大小不固定 index 从 1 开始
arr1 = {1111, "ding2", "ding3"}
for index = 1, #arr1 do
  print(arr1[index])
end

for ind, val in ipairs(arr1) do
  print(ind, val)
end

print(arr1[4]) -- nil 可以越界 直接是 nil

-- 函数
-- function 关键字前可以加 local 表示局部 不加都默认是全局的

function test_fn1(arg1, arg2)
  return arg1 + arg2
end

res1 = test_fn1(1, 2, 3, 4, 5)
print(res1)

function test_fn2(arg1, arg2)
  return 1, 2, 3
end
res1, res2, res3 = test_fn2()
print(res1, res2, res3)

-- table
-- 类似 js 中的对象
test_obj = {}
test_obj.ding1 = "ding1"
print(test_obj['ding1'])
print(test_obj.ding1)

-- 模块和包
module = {}
module.test1 = 666
function module.sum(a, b)
  return a + b
end


-- 冒号和点的区别
test4 = { ding= 666 }
function test4:myPrint1()
  print('::::', self.ding)
end

function test4.myPrint2(self)
  print('....', self.ding)
end
test4.myPrint2(test4)
test4:myPrint1()
