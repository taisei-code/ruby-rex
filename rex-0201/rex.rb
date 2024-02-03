# No1

# # class Foo
# #   attr_writer :a
# # end

# # foo = Foo.new
# # foo.a = "REx" # => オブジェクトfooが保持するインスタンス変数@aに文字列"value"が代入される
# # puts foo.a    # => インスタンス変数@aに対して読み取り用のメソッドが定義されていないためNoMethodErrorが発生


# No2

# str = "abcdefghijk"
# p str[2,4] 

=begin
# Rubyの配列は0番からスタートします。よって、3番目から4文字のcdefが出力されます。
=end

# No3

# def hoge(n)
#   if n % 3 == 0
#     "hello"
#   elsif n % 5 == 0
#     "world"
#   end
# end

# str = 'a'
# str.concat hoge(2)
# str.concat hoge(5)
# puts str

=begin
String#concatはselfへ引数の値を結合します。selfの内容を変更します。
=end

# No4

# def hoge(step = 1)
#   current = 0
#   Proc.new {
#     current += step
#   }
# end

# p1 = hoge
# p2 = hoge(2)

# p2.call 
# p2.call 

# p p2.call

=begin
p1とp2は別のProcオブジェクトのため、hogeメソッド内のcurrent変数は共有されません。
よって、p2の結果は6になります。
=end

# No5

# arr = ["c", 2, "a", 3, 1, "b"]
# arr.sort
# p arr

=begin
Arrayクラスのsortメソッドの問題です。

sortメソッドは配列の要素を並び替えたい時に使用します。

要素の並び替えは<=>演算子によって行われます。

(要素1 <=> 要素2)の結果が-1なら要素1が順番として先に並び、0ならそのまま、1なら要素2が先に並びます。

また<=>演算子で比較できない要素があると例外ArgumentErrorが発生します。

<=>では文字列と数値は比較できません。

問題のプログラムは文字列と数値を比較しています。

よって答えは「ArgumentErrorになる」です。
=end

# No6



# No7

# X = 10
# Y = X < 10 ? "C" : "D"
# puts Y 

=begin
大文字アルファベットから始まる識別子は定数です。
Rubyの定数は警告が表示された上で、上書きが可能です。

問題のコードでは、変数X、Y共に最初の代入のため警告は発生しません。

以下のコードは条件演算子といいます。条件が真の場合に、式1が返されます。条件が偽の場合に、式2が返されます。
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