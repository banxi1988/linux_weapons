# Linux 命令兵器谱

兵器之于武侠, 好比命令之于 Linux - by 代码会说话

## 三剑客之上古神器 Awk

> AWK was created at Bell Labs in the 1970s,[3] and its name is derived from the surnames of its authors—Alfred Aho, Peter Weinberger, and Brian Kernighan.
> auk

1. 把 Awk 当简化的用于处理或统计文本表格,配置的特定 C 语言来理解.
2. Awk 核心逻辑是文本行记录处理,行列分割处理.

Linux 上 `awk` 一般是指 gawk 也就是 GNU Awk. 功能更为丰富.

备注:

1. 简单上手,够用即可.
2. 复杂逻辑推荐使用 Python 等工具.

```python3
begin_process()
for file in files:
  for line in file:
    process_line(line, line.split())
end_process()
```

### 基本语法及运行说明

1. C 类语法.

```
{
  print "Hello World";
}
```

2. `-f`

3. `#!` SHELLBANG

### 记录行有关的列表

- `$0` 表示当前匹配的记录行
- `$1` 表示当前记录行的第 1 列数据.
- `$2` 表示当前记录行的第 2 列数据.
- `$3` 表示当前记录行的第 3 列数据.
- `$<N>` 以此类推,表示当前记录行的第 N 列数据.

### 内置全局变量

- `FS` 列分隔符,支持正则. (也可用命令行选项 `-F` 指定.)
- `NF` 当前行记录的列数.
- `NR` 当前行号.
- `FNR` 当前文件的当前行号
- `FILENAME` 当前文件名
- `RS` 行分割符(默认是换行符)
- `OFS` 用于输出的列分隔符
- `ORS` 用于输出的记录分隔符(默认是换行符)
- `OFMT` 数字的输出格式(默认是 %.6g)
- `CONVFMT` 数字的转换格式(默认是 %.6g)
- `SUBSEP` 分割多下标(默认是 034)
- `ARGC` 参数个数
- `ARGV` 参数数组,可修改
- `ENVIRON` 环境变量,下标是变量名

### 内置函数

- `rand` 返回 (0,1) 之间的随机数
- `srand` 设置随机数种子,返回之前的种子.
- `int` 截断一个整型值
- `length` 返回参数作为字符串的长度,(无参则以 %0 为参数)
- `substr(s,m,n)` n 表示长度,m 表示起始位置(注意:从 1 开始.)
- `index(s,t)` 查找`t` 出现的索引位置,0 表示没有出现 .
- `match(s,r)` 查找匹配正则表达式 `r` 的出现开始位置,返回 0 表示未找到,`RSTART` 会被设置为匹配的起始位置,`RLENGTH` 表示匹配的长度.
- `split(s,a,fs)` 将字符串`s` 分割成数组元素 `a[1],a[2],...,a[n]`然后返回 n.
  如果 `fs` 参数为空的话,则使用全局的 `FS` 变量.
- `sub(r,t,s)` 将`s`中第一次匹配 `r` 正则表达式的内容替换为 `t`.
- `gsub(r,t,s)` 将`s`中所有匹配 `r` 正则表达式的内容替换为 `t`.
- `tolower(str)` 转小写.
- `toupper(str)` 转大写.
- `sprintf(fmt,expr, ...)` 类似于 C 语言中 `printf`
- `system(cmd)` 执行系统命令并返回退出状态.
