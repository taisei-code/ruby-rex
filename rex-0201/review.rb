=begin 

# ① attr

class User
  @name = ""
end

user = User.new
user.name = "taro"
p user.name # NoMethodError

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

class Human
  attr_accessor :name

  def initialize(name)
    @name = name
  end

end

human = Human.new("taro")
puts human.name
human.name = "siro"
puts human.name

class Foo
  attr_writer :a 
end

foo = Foo.new
foo.a ="REx"
puts foo.a # 読み取りのattr_readerが定義されてないから、NoMethodError

=end

# ② concat

def hoge(n)
  if n % 3 == 0
    "hello"
  elsif n % 5 == 0
    "world"
  end
end

str = ' '
str.concat hoge(3) # 文字列オブジェクトstrの末尾にhogeメソッドのif文の結果を結合するパターン
puts str

### 文字列を結合

s1 = "ようこそ"
s2 = "Rubyの世界へ"

s1.concat(s2) # s1の変数の中身を破壊的に変更

p s1

