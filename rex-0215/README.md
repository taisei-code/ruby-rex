# メソッド

- to_h
配列をハッシュに変換する

- to_a
ハッシュ、範囲オブジェクトなどを配列に変換する

- to_s
オブジェクトを文字列にする

- map
配列の要素の数だけブロック内で処理を繰り返して、新しい配列を返す

- step
最初の数値から繰り返しのたびに毎回一定の数値を加算していき、指定した最高値を超えるまで繰り返しを行うことができます。

- strftime
日時データを指定したフォーマットで文字列に変換することができるメソッド。
Time, Date, DateTimeクラスに対して使える

- invert（Hash#invert）
キーと値を入れ替えます。
入れ替えの結果キーが重複した場合は、後に定義された方が優先されます。

- flatten
多次元配列を1次元配列にする

- flatten!
破壊的メソッド

- upcase
小文字を大文字にする

- transpose
行と列を入れ替えた新しい配列を返す

- strip 
文字列の先頭と末尾の空白文字(\t\r\n\f\v)を取り除きます。

- split 
selfの文字列を分割する

- each
配列の要素分の処理を繰り返し行いたい場合に使用するメソッドです。
配列を指定してeachメソッドを実行すると、配列のインデックス番号0から順番に繰り返し処理が実行されます。

- product 
配列と配列の組み合わせ

- chop 
末尾の改行コードを削除することができるメソッド。
(文字列の改行コード以外の文字列の末尾の1文字を削除する。)

- find_all, select
各要素に対してブロックを評価した結果が、真である要素の配列を作成し返します

- collect, map
各要素に対してブロックを評価した結果を配列に格納し返します

- detect
各要素に対してブロックを評価した結果が、真である要素の配列を作成し返します


# 進数

- 0x
- hex
- 0b
- oct

# Hashクラス

Hashの初期化
- {}
- Hash.new 


# 多重代入
- 変数に対して代入する値の数が少ないときは余った変数にnilが格納されます。
- 変数に対して値の数が多い場合は余った値は無視されます。
- 1つの変数に対して複数の値を代入する場合は配列として代入されます。


# Dirクラスのクラスメソッド

- Dir.pwd
カレントディレクトリのフルパスを文字列で返します。

# フォーマット文字列

- %F   日付（%Y-%m-%d）
- %Y   西暦4桁
- %y   西暦の下2桁
- %m   月を表す
- %d   日
- %D   日付（%m/%d/%y）

# 三項演算子

# &, &&, |, ||

- scan
- zip 
- delete 
- delete_if 
- reject
- reject_if
- pwd
- eql
- equal?
- detect
- strip
- chomp