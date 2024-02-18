### 1~10

### 1

# puts 0b2
# puts '80'.oct # 0（エラーではない）

### 6

# def bar(n)
#   puts n
# end 
# bar 5 # 5

# def bar(n)
#   puts n 
# end 
# bar (10) #10 

# def bar(*n1, n2)
#   puts n1
#   puts n2
# end
# bar 5, 6, 7, 8

# def bar(*n1, n2, *n3)
#   puts n1
#   puts n2
# end
# bar 5, 6, 7, 8

### 11~20

### 15

# str = " Hello Ruby   \r\n"
# p str.strip! # "Hello Ruby"

### 20

### 21~30

### 25

# arr = [
#   "a".to_i(30),  # 10
#   "070".to_i(0), # 56
#   nil.to_i,      # 0
#   "0b0001".to_i  # 0
# ]
# p arr

### 28

# # ①
# arr1 = Array(3){"a"}
# p arr1 # [3]

# # ②
# arr2 = Array(3){"a"}
# p arr2 # [3]

# # ③
# arr3 = Array.new(3){"a"}
# arr3.first.upcase # 
# p arr3 # ["a", "a", "a"]

# # ④
# arr4 = Array.new(3){"a"}
# arr4.first.upcase! # 
# p arr4 # ["A", "a", "a"]

### 29

# arr = [5, 3, 8, 1, 4, 2, 6, 9, 0, 7]
# # p arr.sort!{ |a, b | b <=> a } 
# # [9, 8, 7, 6, 5, 4, 3, 2, 1, 0]

# p arr.sort!{ |a, b | b <=> a }.reverse!
# # [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

### 31~40

### 36

=begin

=end 