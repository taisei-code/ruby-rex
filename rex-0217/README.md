## Array#each_slice(n)

- selfからn個で配列を区切りブロックに渡す

`self.each_slice(n)`


## Procオブジェクトとcall

- Procはブロックを持ち運べるオブジェクト
- Procはクラス
- Proc.newでオブジェクトを作れる
- Proc.newで作成したオブジェクトはcallで呼び出せる

① 敢えてcallで呼び出さなかったときに、どのような結果が返るのか

```ruby

proc = Proc.new
p proc 
# => #<Proc:0x00007fe4ca86a3d8@review.rb:20>

```

② callで呼び出すと、変数に代入したProcオブジェクトが返る

``` ruby

proc = Proc.new { p "proc" }
p proc.call

```

## 可変長引数

メソッドの仮引数の前に* を付けると、複数の引数をまとめて配列として受け取ることができます。ただしこの可変長引数は1メソッドにつき、1つだけしか指定するができません。

## to_aメソッド

- Arrayクラス
- 配列に変換するメソッド

## with_index(offset)

要素にインデックスを添えて繰り返す
インデックスはoffsetから開始する

## each_cons(cnt)

selfからcnt個ずつ要素を取り出しブロックに渡す  
ブロック引数には配列で渡されます。

## Arrayクラスでcollectと同じ動作

### collect,map
- Arrayクラスのメソッド
- 各要素に対してブロックの結果をまとめた配列を返します。

## Compact!

selfからnilを破壊的に取り除く
