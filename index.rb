## to_h

human = [["name", "pikawaka"]]
p human.to_h # {"name"=>"pikawaka"}

## to_a

## ハッシュ
human = { name: "pikawaka", age: 25 } 
p human.to_a # [[:name, "pikawaka"], [:age, 25]]

##範囲オブジェクト
p (1..10).to_a # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

## map

numbers = [1,2,3]
p numbers.map { |n| n * 2} # [2, 4, 6]