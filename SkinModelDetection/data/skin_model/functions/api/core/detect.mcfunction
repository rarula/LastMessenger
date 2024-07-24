#> skin_model:api/core/detect
#
# @input
#   storage skin_model: in
#       name: string
#       dimension: string
#       x: int
#       y: int
#       z: int
#   macro
#       name: string
#       dimension: string
#       x: int
#       y: int
#       z: int
#
# @within function skin_model:api/detect

# プレイヤーヘッドを配置
    $setblock $(x) $(y) $(z) minecraft:player_head{SkullOwner:{Name:"$(name)"}}

# gametimeを取得
    execute store result storage skin_model:temp Gametime int 1.0 run time query gametime

# キューに追加
    data modify storage skin_model: Queue append from storage skin_model: in
    data modify storage skin_model: Queue[-1].time set from storage skin_model:temp Gametime

# リセット
    data remove storage skin_model: in
    data remove storage skin_model:temp Gametime
