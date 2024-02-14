# 2

# require 'date'
# d = Date.today.to_s # "2024-02-15"
# p d

# d1 = Date.today.strftime("%Y-%m-%d") # "2024-02-15
# p d1

# d2 = Date.today.strftime("%D")
# p d2 # "02/15/24"

=begin

Date#to_sは2015-01-05形式で日付を出力
strftimeメソッド

%Y 西暦を表す
%m 月を表す
%d 日
%D 日付

=end

# 5

# p "Apple"[-1] #e
# p "Apple".slice(3)

# 7
# a1 = [1,2,3,4,5]
# a2 = [4,2,3,5]

# p a1 | a2 

=begin 

Array#| は集合の和結合。重複する要素は取り除かれる

=end

# 8 

# puts "0x90".hex
# puts 0b2
# puts '80'.oct

=begin 

String#hex は文字列を16進数で返す
0b は2進数を表すプレフィックス。今回の選択肢0b2は2進数ではありません。0b10が正しい定義
String#octは文字列を8進数で解釈して、整数で返します。8進数で解釈できない場合は0を返します。
今回の選択肢”80”は8進数ではありません。"100"が正しい定義

=end 

# 10

# require 'date'
# d3 = Date.today.strftime("%F") 
# p d3 # "2024-02-15"

# d4 = Date.today.strftime("%Y-%m-%d")
# p d4

# 25

# p [1,2,3,4].map { |e| e * e }

# 30

# arr = [["apple"],["banana"],["orange"]].flatten
# arr.each do |i|
#   puts i
# end

=begin 
Array#flattenはselfを再帰的に平坦化します(3次元配列を1次元配列の配列を返す)。
=end 

# 33
# a = "Ruby"
# b = " on Rails"

# a.concat b
# a.reverse! # "sliaR no ybuR"
# p a.index("R", 1) # 4

=begin 

String#reverse!	文字列の並びを反転します このメソッドは破壊的メソッド
String#index(pattern, pos)	文字列のpos番目からpatternを検索し、最初に見つかった位置を返します
問題のコードを1行ずつ実行すると以下のようになります。
=end 