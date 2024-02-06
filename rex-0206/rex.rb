# No1

# arr = ["apple", "banana", "orange"].flatten
# arr.each do |i|
#   puts i
# end

=begin
Array#flattenはselfを再帰的に平坦化します(3次元配列を1次元配列の配列を返す)。
=end

# No2

#保留

=begin

=end

# No3

# str = "Liberty Fish   \r\n"
# str.chop
# p str

=begin
str.chopは末尾の文字を取り除きます。ただし、文字列の末尾が"\r\n"であれば、2文字とも取り除きます。
破壊的メソッドではないので、selfは影響を受けません。

理解できない
=end

# No4

# h = {a: 100, b: 100}
# puts h.invert

=begin
実行結果：{100=>:b}

Hash#invertはキーと値を入れ替えます。
入れ替えの結果キーが重複した場合は、後に定義された方が優先されます。
=end

# No5

# arr = ["c", 2, "a", 3, 1, "b"]
# arr.sort
# p arr

=begin
実行結果：ArgumentError

sortメソッドは配列の要素を並び替えたい時
要素の並び替えは <=>演算子で行われる
<=>では文字列と数値は比較できない
=end

# No6

#保留

# No7

d = Date.new(2015, 1, 5)
p d.strftime("%x")

=begin

=end

# No8

# puts "0x90".hex #144
# puts '90' #90
# puts 0b2 # 2進数ではない 0b10が正しい
# puts '100'.oct #8進数ではない "100"が正しい

=begin
0xは16進数を表すプレフィックスです。
String#hexは文字列を16進数で解釈して、整数で返します。16進数で解釈できない場合は0を返します。

0bは2進数を表すプレフィックスです。
今回の選択肢0b2は2進数ではありません。0b10が正しい定義です。

String#octは文字列を8進数で解釈して、整数で返します。8進数で解釈できない場合は0を返します。
今回の選択肢”80”は8進数ではありません。"100"が正しい定義です。
=end

# No9
# str = "1;2;3;4"
# p str.split(";")

=begin
String#splitはselfの文字列を分割するメソッドです。
問題のコードでは";"で文字列を分割します。
=end

# No10
# arr = [1,2].product([3,4])
# p arr
# arr = [1,2].product([3,4]).transpose
# p arr

=begin
productはレシーバーの配列と引数の配列からそれぞれ1つ要素を取り出し新しい配列を作成し、全ての配列を要素とする配列を返します。
transposeはレシーバーの配列から行と列を入れ替えた配列を作成し返します。
=end

# No11
# p "Hello%d" % 5

=begin
String#%はフォーマットされた文字列を返します。
フォーマットには、"%d"や%sなどの指示子を用います。
String#%を用いると、指示子が引数の値で置換されます。

指示子の詳しい説明はRubyリファレンスを参照してください。

今回の問題では、"%d"が10進数表現で数値を出力します。
=end

# No12
# Date.today.strftime("%F")

=begin
Date#strftimeは引数のフォーマット文字列で日付を文字列で返します。

次の表が選択肢で使用されているフォーマット文字列の意味になります。
%F	日付(%Y-%m-%d)
%Y	西暦4桁
%y	西暦の下2桁(00-99)
%m	月を表す数字(01-12)
%d	日(01-31)

=end

# No13

=begin
Rubyでクラスを定義するにはclassキーワードを使います。
クラスは次のように書くと定義することが出来ます。

class クラス名
end

=end

# No14

# p "Apple-Banana-Lemon".split /(-)/ # 実行結果　["Apple", "-", "Banana", "-", "Lemon"]
# p "Spring,Summer,Autumn,Winter".split(/,/) # 実行結果 ["Spring", "Summer", "Autumn", "Winter"]
# p "Spring,Summer,Autumn,Winter".split(/(,)/) # 実行結果 ["Spring", ",", "Summer", ",", "Autumn", ",", "Winter"]

=begin
String#splitは、引数の正規表現にマッチしたもので文字列を分解します。
例えば、カンマを使って"Spring,Summer,Autumn,Winter"を分解してみます。
=end

# No15

# p "Hello" * 5 # 実行結果 "HelloHelloHelloHelloHello"

=begin
String#*はselfを引数の回数分、繰り返した文字列を新しく作成し返します。
=end

# No16

# File.open('testfile.txt',) do |f|
#   f.write("recode 1\n")
#   f.write("recode 2\n")
# end

=begin
保留
=end

# No17

# each_sliceの例

# arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
# arr.each_slice(3) do |i|
#   p i
# end # 実行結果 [1, 2, 3] [4, 5, 6] [7, 8, 9] [10]

# arr = (1..30).to_a
# container = []

# arr.each_slice(7) do |i|
#   container << i # 配列に格納？
# end

# p container.length

=begin
Array#each_slice(n)は、selfからn個で配列を区切りブロックに渡します。
=end

# No18

# def bar(n)
#   puts n
# end
# bar 5 ○

# def bar(n)
#   puts n
# end
# bar (10) ○

# def bar(*n1, n2)
#   puts n1
#   puts n2
# end
# bar 5, 6, 7, 8 ○

# def bar(*n1, n2, *n3)
#   puts n1
#   puts n2
# end
# bar 5, 6, 7, 8 ×

=begin
可変長引数を2つ定義することはできません。
可変長引数の実行結果は次の通りになります。
=end

# No19

# a = [1,2,3,4]
# p a.slice(2,1)

=begin
Rubyの配列は0番からスタートします。よって、3番目から1文字の[3]が出力されます。
=end

# No20

# arr = Array(3){"a"}
# # arr.first.upcase
# p arr

# arr = Array(3){"a"}
# arr.first.upcase!
# p arr

# arr = Array.new(3){"a"}
# arr.first.upcase
# p arr
# 実行結果 ["a", "a", "a"]

# arr = Array.new(3){"a"}
# arr.first.upcase!
# p arr 
# 実行結果 ["A", "a", "a"]

=begin
Array(3)はArray([3])と宣言したことと同じ意味
Array#firstは配列の先頭要素を取得します。
Array.new(3){"a"}は要素数3の配列を作成し、ブロックの値でそれぞれ初期化します。

String#upcaseは非破壊メソッドなので、selfの内容は変わりません。
String#upcase!は破壊メソッドなので、selfの内容が変わります
=end

# No21

=begin
Enumerable#collect	各要素に対してブロックの結果をまとめた配列を返します。
Enumerable#map	Enumerable#collectの別名です。
Enumerable#select	selfからブロックの条件に該当する要素を集めて返します。
Enumerable#find	selfからブロックの条件に該当する最初の要素を返します。
Array#delete	selfから引数の要素を削除します。削除した要素を返します。破壊的メソッドです。
=end

# No22

# class Foo
#   attr_accessor :foo

#   def initialize
#     @foo = 0
#   end
# end

# foo1 = Foo.new
# foo1.foo += 1
# foo2 = Foo.new
# foo2.foo += 2

# puts "#{foo1.foo}/#{foo2.foo}"

=begin
先頭に@が付く変数はインスタンス変数です。インスタンス変数は、そのインスタンス変数が定義されているクラスのインスタンスごとにインスタンス内で共有されます。
問題ではinitializeメソッドでインスタンス変数@fooが初期化され、attr_accessorで読み取りと書き込みを可能にしています。

Fooクラスのインスタンスであるfoo1, foo2は、それぞれ別のインスタンスなのでインスタンス変数@fooもそれぞれで独立します。
=end

# No23

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

引数にはStringクラスかSymbolクラスのリテラルを指定します。複数指定することも可能です。

クラス内で例1のようにattr_reader :aと記述すると例2のようにインスタンス変数@aに対して読み取り用のメソッドを定義したことになります。
例1と例2のFooクラスはそれぞれインスタンス変数@aに対しての読み取りメソッドを持ちます。
=end

# No24

# p "Hello" % 5
# p "Hello%d" % 5

=begin
String#%はフォーマットされた文字列を返します。
フォーマットには、"%d"や%sなどの指示子を用います。
String#%を用いると、指示子が引数の値で置換されます。

指示子の詳しい説明はRubyリファレンスを参照してください。

今回の問題では文字列"Hello"にフォーマットに必要な指示子が無いためそのまま出力されます。

指示子を付与すれば次のように表示されます。
=end

# No25

# chars = "I love apple, banana and grape"

# 6.times do
#   chars = chars.sub("a", "@")
# end
# p chars

=begin
subは第一引数の検索対象のパターンと、第二引数の置換後の文字列を使って１回だけレシーバーの文字列を置換します。
=end

# No26


# No27


# No28

# class Foo
#   @@var = 0

#   def var
#     @@var
#   end

#   def var=(value)
#     @@var = value
#   end

# end

# class Bar < Foo
# end

# foo = Foo.new
# foo.var += 1
# bar = Bar.new
# bar.var += 2

# puts "#{foo.var}/#{bar.var}"

=begin
問題ではFooクラスにクラス変数@@varが定義されています。
クラス変数は継承されたクラスにも反映されるので、そのクラス変数が定義されているクラスとそのサブクラスの全インスタンスで共有されます。
FooクラスのインスタンスfooとFooクラスを継承しているBarクラスのインスタンスbarで@@varの値を参照・更新しています。
foo, barではFooクラスの@@varは共有され実行結果は3/3となります。
=end

# No29

# h = {a: 100}
# h.each {|p|
#   p p.class
# }

=begin
Hash#eachのブロックパラメータはArrayで渡されます。
=end

# No30

# hoge = "a".to_a
# puts hoge.class

=begin
Stringにto_aメソッドはありません。
=end

# No31

# h = {a: 200, b: 200}
# puts h.invert

=begin
Hash#invertはキーと値を入れ替えます。
入れ替えの結果キーが重複した場合は、後に定義された方が優先されます。
=end

# No32

# h = {a: 100, b: 200}
# h.delete(:a)
# puts h

=begin
Hash#delete(:key)はレシーバーからkeyの項目を削除します。
このメソッドは破壊的メソッドです。
=end

# No33


# No34

# str = "Liberty Fish   \r\n"
# str.strip
# p str

=begin
String#stripは文字列の先頭と末尾の空白文字(\t\r\n\f\v)を取り除きます。String#stripは破壊的メソッドではないので、内容は変更されません。
=end

# No35


# No36

# p [1, 2, 3, 4].map { |e| e * e }

=begin
各要素を順番にブロックに渡してブロックを実行し、ブロックの戻り値を集めた配列を作成し、返します。
ブロックが与えられなかった場合は、Enumeratorオブジェクトを返します。
=end

# No37
 
# arr = [5, 3, 8, 1, 4, 2, 6, 9, 0, 7]
# arr.sort!{ |a, b | b <=> a }.reverse!
# p arr

=begin
問題のプログラムでは、sort!メソッドで降順に並び替え、さらにreverse!メソッドで要素の内容を反転させ変数arrの内容を変更しています。
=end

# No38

# raise ['Error Message']

=begin
StandardErrorを継承しないクラスのインスタンスをraiseメソッドの引数に指定すると、TypeErrorが発生し次のメッセージが表示されます。
=end

# No39

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

# No40

# a = [1]
# a[5] = 10
# a.compact!
# p a

=begin
a.length = 1の配列の5番目へ値を入れると、配列の長さが拡張されます。未指定の要素へはnilが入ります。
Array#compact!はselfからnilを破壊的に取り除くメソッドです
=end

# No41

# (10..15).to_a.map.with_index(1) do |elem, i|
#   puts i
# end

=begin
s..eやs...eはRangeクラスの定義です。
..は終端を含み、...は終端を含みません。

Enumerator#with_index(offset)は要素にインデックスを添えてを繰り返します。
インデックスはoffsetから開始します。
=end

# No42 保留


# No43 保留


# No44

# p [1,2,3,4].map do |e| e * e end

# No45


# No46

# h = {a: 100, b:200}
# p h.invert

=begin
Hash#invertは、キーと値を入れ替え新しいHashを作ります。
=end

# No47

# x = 1
# y = 1.0

# print x == y
# print x.eql? y
# print x.equal? y
# print x.equal?(1)

# No48

# arr = [
#   "a".to_i(36),
#   "070".to_i(0),
#   nil.to_i,
#   "0b0001".to_i
# ]

# p arr

# 2進数
# "0b10".to_i(0) # =>2

# 8進数
# "010".to_i(0)  # => 8
# "0o10".to_i(0) # => 8

# 10進数
# "0d10".to_i(0) # => 10

# 16進数
# "0x10".to_i(0) # => 16

=begin
String#to_iメソッドは文字列を整数に変換します。
整数と見なせない文字がある場合はその文字までが変換対象になります。

空文字、nilが変換対象の場合は0を返します。

=end

# No49

# hash = {"apple" => "grate", "banana" => "ole"}
# p hash.member?("orange")

# hash = {"apple" => "grate", "banana" => "ole"}
# p hash.to_a

# hash = {"apple" => "grate", "banana" => "ole"}
# hash.update({"grape" => "juice"})
# p hash

# hash = {"apple" => "grate", "banana" => "ole", "orange" => "juice"}
# p hash.clear

# No50

# (x, y), z = 1, 2, 3

# p z
