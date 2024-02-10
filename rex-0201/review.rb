# class User
#   @name = ""
# end

# user = User.new
# user.name = "taro"
# p user.name # NoMethodError

class Human
  attr_reader :name
  attr_writer :name

  def initialize(name)
    @name = name
  end

end

human = Human.new("taro")
puts human.name #taro
human.name = "siro" # クラスの外部から変更
puts human.name # attr_writerが無いと、NoMethodErrorになる