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
