#> util:ray/core/pass_through/_
#
# Copyright © 2023 赤石愛
# This software is released under the MIT License, see LICENSE.
#
# @input
#   storage util:
#       in: int
#
# @output
#   storage util:
#       out: ("+X" | "-X" | "+Y" | "-Y" | "+Z" | "-Z")[]
#
# @within function util:ray/pass_through

#>
# @within function util:ray/core/pass_through/**
    #declare score_holder #_
    #declare score_holder #X
    #declare score_holder #Y
    #declare score_holder #Z
    #declare score_holder #DX
    #declare score_holder #DY
    #declare score_holder #DZ
    #declare score_holder #D1
    #declare score_holder #D2


## 視線元の場所 4桁
## 視線の方向 4桁
execute positioned ^0.00005 ^0.00005 ^0.00005 summon minecraft:marker run function util:ray/core/pass_through/get_formula

## 方向の符号を取得
data modify storage util:temp signs set value {X:1,Y:1,Z:1}
data modify storage util:temp _ set string storage util:temp direction[0] 0 1
execute if data storage util:temp {_:"-"} run data modify storage util:temp signs.X set value -1
data modify storage util:temp _ set string storage util:temp direction[1] 0 1
execute if data storage util:temp {_:"-"} run data modify storage util:temp signs.Y set value -1
data modify storage util:temp _ set string storage util:temp direction[2] 0 1
execute if data storage util:temp {_:"-"} run data modify storage util:temp signs.Z set value -1

## 方向の絶対値を取得
data modify storage util:temp _ set value {X:0,Y:0,Z:0}
execute store result storage util:temp _.X int 1 run data get storage util:temp direction[0] 10000
execute if data storage util:temp signs{X:-1} store result storage util:temp _.X int 1 run data get storage util:temp direction[0] -10000
execute store result storage util:temp _.Y int 1 run data get storage util:temp direction[1] 10000
execute if data storage util:temp signs{Y:-1} store result storage util:temp _.Y int 1 run data get storage util:temp direction[1] -10000
execute store result storage util:temp _.Z int 1 run data get storage util:temp direction[2] 10000
execute if data storage util:temp signs{Z:-1} store result storage util:temp _.Z int 1 run data get storage util:temp direction[2] -10000
data modify storage util:temp direction set from storage util:temp _

## 座標の初期値を取得
scoreboard players set #_ Util 10000
execute if data storage util:temp signs{X:-1} store result score #X Util run data get storage util:temp pos[0] 10000
execute if data storage util:temp signs{X:1} store result score #X Util run data get storage util:temp pos[0] -10000
scoreboard players operation #X Util %= #_ Util
execute if data storage util:temp signs{Y:-1} store result score #Y Util run data get storage util:temp pos[1] 10000
execute if data storage util:temp signs{Y:1} store result score #Y Util run data get storage util:temp pos[1] -10000
scoreboard players operation #Y Util %= #_ Util
execute if data storage util:temp signs{Z:-1} store result score #Z Util run data get storage util:temp pos[2] 10000
execute if data storage util:temp signs{Z:1} store result score #Z Util run data get storage util:temp pos[2] -10000
scoreboard players operation #Z Util %= #_ Util

## 追いかけっこの１つ分
## 0の要素は∞扱いにする
## 掛け算するときは1扱い
execute store result score #_ Util run data get storage util:temp direction.Z
execute if data storage util:temp direction{Z:0} run scoreboard players set #_ Util 1
execute store result score #DX Util run data get storage util:temp direction.Y
execute if data storage util:temp direction{Y:0} run scoreboard players set #DX Util 1
scoreboard players operation #DX Util *= #_ Util

execute store result score #DY Util run data get storage util:temp direction.X
execute if data storage util:temp direction{X:0} run scoreboard players set #DY Util 1
scoreboard players operation #DY Util *= #_ Util

execute store result score #DZ Util run data get storage util:temp direction.X
execute if data storage util:temp direction{X:0} run scoreboard players set #DZ Util 1
execute store result score #_ Util run data get storage util:temp direction.Y
execute if data storage util:temp direction{Y:0} run scoreboard players set #_ Util 1
scoreboard players operation #DZ Util *= #_ Util

## 追いかけっこの現在地を設定
scoreboard players set #_ Util 10000
# X
scoreboard players operation #D1 Util = #DX Util
scoreboard players operation #D1 Util /= #_ Util
scoreboard players operation #D2 Util = #DX Util
scoreboard players operation #D2 Util %= #_ Util
scoreboard players operation #D1 Util *= #X Util
scoreboard players operation #D2 Util *= #X Util
scoreboard players operation #D2 Util /= #_ Util
execute store result score #X Util run scoreboard players operation #D1 Util += #D2 Util
execute if data storage util:temp direction{X:0} run scoreboard players set #X Util 2147483647
# Y
scoreboard players operation #D1 Util = #DY Util
scoreboard players operation #D1 Util /= #_ Util
scoreboard players operation #D2 Util = #DY Util
scoreboard players operation #D2 Util %= #_ Util
scoreboard players operation #D1 Util *= #Y Util
scoreboard players operation #D2 Util *= #Y Util
scoreboard players operation #D2 Util /= #_ Util
execute store result score #Y Util run scoreboard players operation #D1 Util += #D2 Util
execute if data storage util:temp direction{Y:0} run scoreboard players set #Y Util 2147483647
# Z
scoreboard players operation #D1 Util = #DZ Util
scoreboard players operation #D1 Util /= #_ Util
scoreboard players operation #D2 Util = #DZ Util
scoreboard players operation #D2 Util %= #_ Util
scoreboard players operation #D1 Util *= #Z Util
scoreboard players operation #D2 Util *= #Z Util
scoreboard players operation #D2 Util /= #_ Util
execute store result score #Z Util run scoreboard players operation #D1 Util += #D2 Util
execute if data storage util:temp direction{Z:0} run scoreboard players set #Z Util 2147483647

## 求める量を保存しておく
data modify storage util:temp count set from storage util: in
## 繰り返して求めるよ
data modify storage util:temp out set value []
execute unless data storage util:temp {count:0} run function util:ray/core/pass_through/calc/_

## 反転
data modify storage util: out set value []
execute if data storage util:temp out[0] run function util:ray/core/pass_through/reverse

## スコアボード削除
scoreboard players reset #_ Util
scoreboard players reset #X Util
scoreboard players reset #Y Util
scoreboard players reset #Z Util
scoreboard players reset #DX Util
scoreboard players reset #DY Util
scoreboard players reset #DZ Util
scoreboard players reset #D1 Util
scoreboard players reset #D2 Util

## ストレージ削除
data remove storage util: in
data remove storage util:temp _
data remove storage util:temp pos
data remove storage util:temp direction
data remove storage util:temp signs
data remove storage util:temp count
data remove storage util:temp out
