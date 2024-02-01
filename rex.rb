# class Foo
#   attr_writer :a
# end

# foo = Foo.new
# foo.a = "REx" # => オブジェクトfooが保持するインスタンス変数@aに文字列"value"が代入される
# puts foo.a    # => インスタンス変数@aに対して読み取り用のメソッドが定義されていないためNoMethodErrorが発生