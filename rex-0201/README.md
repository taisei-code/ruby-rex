### attr_accessor 
___
「インスタンス変数」を使う

アクセサとは？

Rubyはそのままだと「インスタンス変数」にアクセスできない

### attr_reader
___
attr_reader :nameと書けば、インスタンス変数@nameにアクセスできる。
しかし、@nameをクラスの外部から変更できない。

### attr_writerメソッド
___
外部からインスタンス変数@nameを変更できる。

