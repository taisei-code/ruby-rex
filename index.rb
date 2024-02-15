### ① メソッド

## to_h

human = [["name", "pikawaka"]]
p human.to_h # {"name"=>"pikawaka"}

## to_a

## ハッシュ
human = { name: "pikawaka", age: 25 } 
p human.to_a # [[:name, "pikawaka"], [:age, 25]]

##範囲オブジェクト
p (1..10).to_a # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]


## to_s

num = 123
p num.to_s

## map

numbers = [1,2,3]
p numbers.map { |n| n * 2} # [2, 4, 6]

## step 

# 1.step(10,2) do |x|
#   print x # 13579
# end

## strftime

require "date"
d = Date.today.strftime("%F")
p d # 2024-02-15

# 同じ動作
d1 = Date.today.strftime("%Y-%m-%d")
p d1

## invert

p ({a: 100, b: 100}).invert # {100=>:b}

## flatten

array1 = [[1,2], [3,4]]
p array1.flatten

## flatten!

array2 = [[1,2],[3,4]]
# p array2.object_id # 70199722528440
p array2.flatten! # [1, 2, 3, 4]
p array2.object_id # 70118177214120

## upcase

str = "Hello World"
puts str.upcase # HELLO WORLD

## transpose

ary = [[1,2], [3,4], [5,6]]
p ary.transpose # [[1, 3, 5], [2, 4, 6]]

## strip

# str = "Liberty Fish   \r\n"
str = " Hello " # "Hello"
p str.strip

## split

str1 = "1;2:3;4"
p str1.split(/;|:/)

## each

fruits = ["apple", "orange", "melon"]
fruits.each do |a|
  puts a
end 

(1..10).each do |a|
  puts a
end 

## product

array3 = [1,2].product([3,4])
p array3 # [[1, 3], [1, 4], [2, 3], [2, 4]]

## chop

str2 = "Hello\r\n"
p str2.chop # "Hello"

str3 = "Hello"
p str3.chop # "Hell"

### 多重代入

# x, y, z = 1, 2
# p x 
# p y 
# p z # nil 

# x, y, z = 1, 2, 3, 4 # 4は無視
# p x 
# p y 
# p z 

# x = 1,2,3,4
# p x # [1, 2, 3, 4] 1つの変数に対して複数の値は配列になる

# (x, y), z = 1, 2, 3
# p x
# p y # nil 3は無視
# p z

# (x, y), z = [1, 2], 3
# p x 
# p y 
# p z



