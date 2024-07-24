
# concat

1.20.2にて追加されたマクロ機能を利用した文字列結合のサンプル

## 使い方

### 2つの文字列を結合する場合 (intsuc/concatの代替データパックとして用いる場合)

```mcfunction
# 1. concat: first に前半文字列を設定する
data modify storage concat: first set value "Fizz"

# 2. concat: second に後半文字列を設定する
data modify storage concat: second set value "Buzz"

# 3. concat:concat を呼び出す
function concat:concat

# 4. 結合結果が concat: result に配置されるので煮るなり焼くなり好きにする
tellraw @a {"storage":"concat:","nbt":"result"}
# -> FizzBuzz
```

### 3つ以上の文字列を結合する場合

```mcfunction
# 1. concat: args に結合したい文字列群を設定する
data modify storage concat: args set value ["effect give @s ","resistance"," ","infinite"," ","5"," ","true"]

# 2. concat:concat を呼び出す
function concat:concat_all

# 3. 結合結果が concat: result に配置されるので出力するなり実行するなり好きにする
tellraw @a {"storage":"concat:","nbt":"result"}
# -> effect give @s resistance infinite 5 true
```

## 解説

後ほど公開される Minecraft Command Advent Calendar 14日目の記事に記載予定。
