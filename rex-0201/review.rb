# # # class User
# # #   @name = ""
# # # end

# # # user = User.new
# # # user.name = "taro"
# # # p user.name # NoMethodError

# # class Human
# #   attr_reader :name
# #   attr_writer :name

# #   def initialize(name)
# #     @name = name
# #   end

# # end

# # human = Human.new("taro")
# # puts human.name #taro
# # human.name = "siro" # クラスの外部から変更
# # puts human.name # attr_writerが無いと、NoMethodErrorになる

# # class Human
# #   attr_accessor :name

# #   def initialize(name)
# #     @name = name
# #   end

# # end

# # human = Human.new("taro")
# # puts human.name
# # human.name = "siro"
# # puts human.name

# class Foo
#   attr_writer :a 
# end

# foo = Foo.new
# foo.a ="REx"
# puts foo.a # 読み取りのattr_readerが定義されてないから、NoMethodError
