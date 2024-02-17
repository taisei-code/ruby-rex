# 2

# a1 = [1,2,3]
# a2 = [4,2,3]
# # p a1 || a2  # [1,2,3]
# p a1 && a2 # [4,2,3]

# a3 = nil
# a4 = [4,5,6]
# # p a3 || a4 # [4,5,6]
# p a3 && a4

# 19

# klass = Class.new # Classクラスのオブジェクトをklassに代入
# p klass
# # => #<Class:0x00007f879c846928>

# hash = {klass => 100} # ハッシュのキーにオブジェクト指定
# p hash 
# # => {#<Class:0x00007f879c846928>=>100}
# puts hash[klass] # 100

# 解答①

# klass = Class.new 
# hash = {}

# hash.store(klass, 100)
# puts hash
# # => {#<Class:0x00007fd7950de728>=>100}
# puts hash[klass]

# 解答②

# klass = Class.new

# hash = Hash[klass, 100] # Hashクラスでハッシュに格納
# puts hash
# # => {#<Class:0x00007fad75846690>=>100}
# puts hash[klass]

# 間違い①

# klass = Class.new
# hash = {klass: 100}
# puts hash
# # => {:klass=>100}
# puts hash[klass]

# 間違い②

# klass = Class.new

# hash = {}
# hash.store(:klass, 100)
# puts hash
# # => {:klass=>100}
# puts hash[klass]

=begin

klassをハッシュのキーに :klass で設定しているのが間違い
klassをキーに設定すると、:klass（シンボル）になる

=end