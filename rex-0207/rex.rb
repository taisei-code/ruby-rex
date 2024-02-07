# No1

# p [1, 2, 3].inject{|x, y| x + y **2} rescue p $!
# p [1, 2, 3].inject(0){|x, y| x + y ** 2} rescue p $!
# p [1, 2, 3].inject([]){|x, y| x << y ** 2} rescue p $!
# p [1, 2, 3].inject do|x, y| x + y ** 2 end rescue p $!

=begin
Enumerable#injectはブロックを使用して繰り返し計算を行います

injectには以下のような特徴があります。

引数を省略した場合は、要素1がブロック引数の1番目に渡されます。
引数を指定した場合は、その値が初期値になります。
ブロック引数の1番目は前回の戻り値が渡されます。初回は、初期値が渡されます。
ブロック引数の2番目は要素が順番に渡されます。

1行目
1 = 0 + 1 ** 2
5 = 1 + 2 ** 2
14 = 5 + 3 ** 2

2行目
1 = 0 + 1 ** 2
5 = 1 + 2 ** 2
14 = 5 + 3 ** 2

3行目
[1] = [] << 1 ** 2
[1, 4] = [1] << 2 ** 2
[1, 4, 9] = [1, 4] << 3 ** 2

4行目
p([1, 2, 3].inject) do|x, y|
  x + y ** 2
end rescue p $!

=end

# No3

# a1 = [1,2,3]
# a2 = [4,2,3]

# p a1 & a2

=begin
Array#&は論理積(AND)を求めることができます。
今回の問題では、[1, 2, 3]と[4, 2, 3]に双方に存在する[2, 3]が出力されます。
=end

# No4

# def hoge
#   x = 0
#   1.step(4,1) do |i|
#     x += 1
#   end
#   puts x
# end
# hoge

=begin
Numeric#step(limit, step)はselfからstepずつ加算し、limitまでをブロックに渡します。

1.step(5,1)は「1から1ずつ加算し、5までの数値」という意味になります。
=end

# No5

# str = "1;2:3;4"
# p str.split(/;|:/)

=begin
String#splitはselfの文字列を分割するメソッドです。
問題のコードでは正規表現を用いて";"または":"で文字列を分割します。
=end

# No6

# hoge = *"a"
# puts hoge.class

=begin
*"a"はArrayクラスのオブジェクトを返します。
=end

# No7

# str = "1;2;3;4"
# p str.split(";")

=begin
String#splitはselfの文字列を分割するメソッドです。
問題のコードでは";"で文字列を分割します。
=end

# No8

# def foo
#   var = "REx"
# end

# puts foo

# CONST = "REx"

# def foo
#   CONST
# end

# puts foo

# def foo
#   CONST = "REx"
# end

# puts foo

# var = "REx"

# def foo
#   var
# end

# puts foo

=begin
変数や定数は参照や更新ができる範囲(スコープ)を持っています。その変数や定数の種類によってスコープが決められています。
外部で定義されたローカル変数はメソッド内部から呼び出すことはできません。
外部で定義された定数はメソッド内部で呼び出し可能ですが、メソッド内部で定数を定義することはできません。
=end

# No9

# $val = 0

# class Count
#   def self.up
#     $val = $val + 1
#     $val == 3 ? true : false
#   end
# end

# [*1..10].any? do
#   Count.up
# end

# p $val

=begin
Enumerable#any?はブロックの戻り値がtrueになると繰り返しをその時点で止めます。
繰り返しが止まるのは3回目の繰り返し、つまり$valが3になった時点です。
=end

# No11

=begin
Fileクラスのクラスメソッドではないもの

File.closeメソッド
File.homeメソッド
File.pwdメソッド
=end

# No12

# class Foo
#   attr_accessor :a
# end

# foo = Foo.new
# foo.a = "REx"
# puts foo.a

=begin
attr_accessorメソッド・・・引数に指定した名前のインスタンス変数に対して読み取り用のメソッド(getterメソッド)と書き込み用メソッド(setterメソッド)を定義
引数にはStringクラスかSymbolクラスのリテラルを指定
=end