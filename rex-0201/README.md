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

# String#concat
破壊的メソッドのconcatは、元の変数の値が結合した文字列に変わる。  
  
concatで文字列を結合  
concatで配列を結合