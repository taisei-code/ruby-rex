### 1~10

### 6
# str = "Liberty Fish   \r\n"
# str.chop
# p str

### 9

# a = "Ruby"
# b = " on Rails"
# p a.append b # NomethodError
# # a << b # "Ruby on Rails"
# # a.reverse # "sliaR no ybuR"
# # p a.index("R", 1) # 8

### 11~20

### 11

# begin 
#   1 / 0
# rescue
#   raise # ZeroDivisionError
# end

### 12 

# str = "1;|:2" # ["1", "2"]
# str = "1;2:3;4" # ["1;2:3;4"]
# # p str.split(";|:")
# p str.split(/;|:/) # ["1", "2", "3", "4"]

### 18

# a1 = "abc"
# a2 = 'abc'

# print a1.eql? a2
# print a1 == a2

### 21~30

### 22

# a = [1, 2, 3, 4, 5]
# b = [2, 4, 6]

# p (a - b).map(&:next) # [2, 4, 6]
# p a & b # [2, 4]
# p a && b # [2, 4, 6]
# p a | b # [1, 2, 3, 4, 5, 6]

### 27

# a1 = [1,2,3]
# a2 = [4,2,3]
# p a1 - a2 # [1]

### 31~40

### 33

# a = [1,2,3,4,5]
# p a.each { |n| puts n } 
# p a.each_index { |n| puts n }
# p a.each_with_index { |n, i| puts n }
# a.each_with_index { |n, i| puts i }

### 38 

# hoge = *"a"
# puts hoge.class # Array

### 41~50