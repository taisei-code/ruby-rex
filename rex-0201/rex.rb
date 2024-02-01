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

arr = ["c", 2, "a", 3, 1, "b"]
arr.sort
p arr

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