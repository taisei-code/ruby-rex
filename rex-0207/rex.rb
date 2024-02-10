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


# No2

arr = [1, 2].product([3, 4])
p arr

=begin

product・・・レシーバーの配列と引数の配列からそれぞれ1つ要素を取り出し新しい配列

レシーバ・・・メソッドを呼び出す際に、そのメソッドが実行される対象となるオブジェクトを「レシーバ」と呼ぶ

transpose

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

読み込みと書き込み
=end

# No13 

# class Foo
#   attr_reader :a
  
#   def initialize
#     @a = "REx"
#   end

# end

# foo = Foo.new
# puts foo.a

=begin
attr_readerメソッドは引数に指定した名前のインスタンス変数に対して読み取り用メソッド(getterメソッド)を定義します。
initialize・・・initializeメソッドが記述されているクラスからClass#newメソッドでオブジェクトを生成する際に、必ず実行される初期化メソッド
=end

# No14 保留

# No15

# puts '10'.oct #String#octは文字列を8進数文字列と解釈して、整数を返す。
# puts 080 # 080はSyntaxErrorになります。
# puts "110".to_i(2) #Fixnum#to_i(n)は文字列をn進数文字列と解釈して、整数を返します。

# No16

# def foo
#   self + 2
# end
# p 1.foo

=begin

=end

# No17 保留

# No19

# a1 = [1,2,3]
# a2 = [4,2,3]

# p a1 | a2

=begin
Array#|は集合の和結合を行います。重複する要素は取り除かれます。
=end

# No20

# (x, y), z = 1, 2, 3
# p z

=begin
多重代入の場合、変数に対して代入する値の数が少ないときは余った変数にnilが格納されます。
変数に対して値の数が多い場合は余った値は無視されます。
また1つの変数に対して複数の値を代入する場合は配列として代入されます。
=end

# No21 保留

# No22

# arr = (1..30).to_a
# container = []

# arr.each_cons(7) do |i|
#   container << i
# end
# p container.length

=begin
Array#each_cons(cnt)はselfからcnt個ずつ要素を取り出しブロックに渡します。ブロック引数には配列で渡されます。
取り出す要素は、[要素1, 要素2, 要素3], [要素2, 要素3, 要素4] ...と1つづ前に進みます。
=end

# No23

# str = "1;2:3;4"
# p str.split(";|:")

# No24

# p [1,2,3,4].map do |e| e * e end

=begin

=end

# No25

=begin
Array#unshift | selfの先頭へ引数の値を破壊的に追加します(FIFO)。引数が指定されていない場合は何もしません。
Array#shift | selfの先頭より1要素を破壊的に取り出します(FIFO)。 
=end

# No26

# h = {a: 100, b:200}
# p h.to_a

=begin
Hash#to_aはキーと値の2要素の配列を並べた配列を作成し、返します。
=end

# No27

# a = [1,2,3,4]
# p a[2,1]

=begin
Rubyの配列は0番からスタートします。よって、3番目から1要素の[3]が出力されます。
=end

# No28

# v1 = false || 1 + 1 == 1.to_i
# puts v1

=begin
演算子の優先度 +が一番優先度が高く||が一番低くなります。
to_i
||
=end

# No29

# def bar(n)
#   puts n
# end
# bar 5

# def bar(n)
#   puts n
# end
# bar (10)

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

=begin

=end

# No30

# hoge = 0
# def hoge
#   x = 0
#   5.times do |i|
#     x += 1
#   end
#   x
# end
# puts hoge

=begin
メソッドと変数の探索順位は変数が先です。
=end

# No31

# class Foo
#   attr_accessor :foo

#   def initialize
#     @foo = 0
#   end
# end

# foo1 = Foo.new
# foo1.foo = foo1.foo + 1
# foo2 = Foo.new
# foo2.foo = foo2.foo + 2

# puts "#{foo1.foo}/#{foo2.foo}"

=begin
Fooクラスのインスタンスであるfoo1, foo2は、それぞれ別のインスタンスなのでインスタンス変数@fooもそれぞれで独立します。
=end

# No32

# hoge = "a".to_a
# puts hoge.class

=begin
Stringにto_aメソッドはありません。
=end

# No33 保留

=begin
=end

# No34

# puts "80"
# puts 0xFF #255
# puts 7.to_s(3) #21
# puts "7".binary

=begin
Stringにbinaryメソッドはありません。
0xFF: 0xは16進数を表すプレフィックスです。ここでは16進数を10進数に変換された、255が表示されます。
7.to_s(3): selfを3進数に変換した、21が表示されます。
=end

# No35

# puts "Hello%d" % 5

=begin
String#%はフォーマットされた文字列を返します。
今回の問題では、"%d"が10進数表現で数値を出力します。
=end

# No36

# a1 = [1,2,3]
# a2 = [4,2,3]
# p a1 && a2

=begin
&& 演算子
左辺が true の場合、右辺は実行します。
左辺が false の場合は、右辺は実行しません。
=end

# No37

# p "Apple-Banana-Lemon".split /(-)/
# p "Spring,Summer,Winter".split /(,)/

=begin
String#splitは、引数の正規表現にマッチしたもので文字列を分解します。
=end

# No38 保留

=begin
=end

# No39

# h = {a: 100, b:100}
# puts h.invert

=begin
=end

# No40

# s = ["one", "two", "three"]
# s.pop
# s.pop
# s.unshift
# s.push "four"
# p s

=begin
Array#pop | selfの末尾より1要素を破壊的に取り出します(LIFO)。
Array#unshift | selfの先頭へ引数の値を破壊的に追加します(FIFO)。引数が指定されていない場合は何もしません。|
=end

# No41

# arr = [
#   "a".to_i(36), #10
#   "070".to_i(0), #56
#   nil.to_i, #0
#   "0b0001".to_i #0
# ]

# p arr

=begin
String#to_iメソッドは文字列を整数に変換
to_i(n)のように引数に基数を指定できます。
引数nに基数を指定することでn進数へ変換

nに0を指定した場合変換対象の接頭辞から基数を判断
=end

# No42 保留

=begin
=end

# No43 保留

=begin
=end

# No44

# str = "-1234567890-"
# str.delete!("^2-41-") # -1234-
# str.delete!("0^5-9-") # 1234
# str.delete("05-9", "^1-4-") # -1234567890-

# puts str # -1234-

=begin
String#deleteメソッドは、引数に指定した文字を削除
引数の先頭の文字が^の場合は指定した文字以外の文字を削除
-は両端に文字がある場合は範囲指定
=end

# No46

# p [1,2,3,4,5].partition(&:odd?) #[[1, 3, 5], [2, 4]]
# p [1,2,3,4,5].partition { |value| value.even? } # 同じ結果

=begin
ネストされた配列で１つめに奇数、２つめに偶数が格納されています。

&:<メソッド名>とするとSymbol#to_procが実行 = ブロックを指定して奇数を判定することと同じ
even?とすると左に偶数
=end


# No48

# p [[1, "data1"], [2, "data2"]].to_h #{1=>"data1", 2=>"data2"}

=begin

空のHashオブジェクトの生成
→ Hash({}), {}, Hash.new

Hash#to_hは2次元配列からハッシュを生成

Hash#mergeは非破壊的メソッド
Hash#clearはselfより要素を全て取り除きます。Hash#clearは破壊的メソッド

=end

# No49

# a = [1,2,3,4]
# p a.slice(2,1)

# No50

=begin
Enumerable#map	Enumerable#collectの別名
=end
