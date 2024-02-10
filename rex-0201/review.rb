class User
  @name = ""
end

user = User.new
user.name = "taro"
p user.name # NoMethodError

class Human
  attr_reader :name

  def initialize(name)
    @name = name
  end

end

human = Human.new("taro")
puts human.name