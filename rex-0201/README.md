## attr_accessor 
「インスタンス変数」を使う

アクセサとは？  
Rubyはそのままだと「インスタンス変数」にアクセスできない

attr_readerとattr_writerを1つにまとめたメソッド

## attr_reader
attr_reader :nameと書けば、インスタンス変数@nameにアクセスできる。  
しかし、**@nameをクラスの外部から変更できない**

```
class Human
  attr_reader :name

  def initialize(name)
    @name = name
  end

end

human = Human.new("サラー")
puts human.name 
human.name = "ソボスライ" # クラスの外部から変更
puts human.name # attr_writerが無いと、NoMethodErrorになる
```

## attr_writerメソッド
**クラスの外部からインスタンス変数@nameを変更できる**

```
class Human
  attr_reader :name
  attr_writer :name

  def initialize(name)
    @name = name
  end

end

human = Human.new("サラー")
puts human.name 
human.name = "ソボスライ" 
puts human.name 
```

## String#concat
破壊的メソッドのconcatは、元の変数の値が結合した文字列に変わる。  
  
concatで文字列を結合  
concatで配列を結合

## Proc

- Procとは、**ブロックを持ち運び便利なオブジェクト**にしたもの
- Procはクラスなので、**Proc.new**でオブジェクトを作れる
- **Proc.new**で作成されたProcオブジェクトは**call**で呼び出せる

## Arrayクラスのsortメソッド

- 配列の中身を昇順で並び替えた新たな配列が戻り値として取得
- 要素の並び替えは<=>演算子によって行われます。
- <=>では文字列と数値は比較できません。

## String#split

文字列を任意の条件で分割して配列に格納してくれます  
  
"文字列".split(区切り文字, 分割数)
()があるとマッチしたものを含んだ結果を返す

```
p "Spring,Summer,Winter".split(/(,)/)
["Spring", ",", "Summer", ",", "Winter"]

```

## product
  
レシーバーの配列と引数の配列からそれぞれ1つ要素を取り出し新しい配列を作成し、全ての配列を要素とする配列を返します。  

## transpose
  
レシーバーの配列から行と列を入れ替えた配列を作成し返します。

## Array#each_slice(n)

selfからn個で配列を区切りブロックに渡します。