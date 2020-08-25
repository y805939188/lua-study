# Lua note
------


## 数据类型
  - nil
  - bool
  - number
  - string
  - userdata
  - function
  - thread
  - table

## 变量类型
  - 全局变量
  - 局部变量
  - 表中的域
  > lua 中的变量全都是全局变量 哪怕是语句块中的。除非使用 local 显示声明。局部变量的作用于为从声明位置开始到所在的语句块('}')结束。变量的默认值均为 nil。
