### 1~10

### 5

# def hoge(step = 1)
#   current = 0

#   Proc.new {
#     current += step
#   }

# end 

# p2 = hoge(2)

# p2.call
# p2.call
# p p2.call # 6

# proc = Proc.new { p "proc" }
# p proc
# p proc.call

### 6

# def bar(n1, n2, *n3)
#   puts "n1: #{n1}, n2: #{n2}, n3: #{n3}"
# end

# bar 5, 6, 7, 8

### 8 

# arr = [1,2,3,4,5,6,7,8,9,10]
# arr.each_slice(3) do |i|
#   p i
# end

# arr = (1..30).to_a
# container = []

# arr.each_slice(7) do |i|
#   container << i
# end 

# p container.length # 5

### 11~20

# hoge = "a".to_a
# puts hoge.class # NomethodError

### 14

# p [1,2,3,4].map do |e| e * e end # #<Enumerator: [1, 2, 3, 4]:map>

### 15

# str = "Hello   \r\n"
# str.strip!
# p str # "Hello"

### 16

# p (10..15).to_a # [10, 11, 12, 13, 14, 15]
# (10..15).to_a.map.with_index(0) do |elem, i|
#   puts i 
# end

### 17

# (1..10).each_cons(3) {|arr| p arr}

# arr = (1..30).to_a
# container = []
# arr.each_cons(7) do |i|
#   container << i 
# end 
# p container.length # 24 

### 20

# a = [1,2,3,4,5]
# b = [2,4,6]
# p a && b

### 21~30

### 23 

# array = [1,2,3,4,5]
# p array.collect { |item| item *2 } # [2, 4, 6, 8, 10]

# array = [1,2,3,4,5]
# p array.map { |item| item *2 } # [2, 4, 6, 8, 10]

### 26

# a = [1]
# a[2] = 20
# a[5] = 10
# p a # [1, nil, nil, nil, nil, 10]
# p a.compact! # [1,10]

### 31~40

### 31 

# member 
# hash = {"apple" => "grate", "banana" => "ole", "orange" => "juice"}
# p hash.member?("apple")

# to_a
# hash = {"apple" => "grate", "banana" => "ole", "orange" => "juice"}
# p hash.to_a # [["apple", "grate"], ["banana", "ole"], ["orange", "juice"]]

