# 1~10

# 5

def hoge(step = 1)
  current = 0
  Proc.new {
    current += step
  }
end 

p2 = hoge(2)

p2.call
p2.call
p p2.call # 6


# 8 

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