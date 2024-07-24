#> asset:actor/bicycle/listener/on_tick/player/riding/back/_
# @within function asset:actor/bicycle/listener/on_tick/player/riding/_

#>
# @within function asset:actor/bicycle/listener/on_tick/player/riding/back/*
    #declare tag Asset.Actor.Bicycle.TempEntity
    #declare tag Asset.Actor.Bicycle.TempEntity0
    #declare tag Asset.Actor.Bicycle.TempEntity1

#>
# @private
# @within function asset:actor/bicycle/listener/on_tick/player/riding/positioned_as_collider/**
    #declare score_holder #FromX
    #declare score_holder #FromY
    #declare score_holder #FromZ
    #declare score_holder #ToX
    #declare score_holder #ToY
    #declare score_holder #ToZ


# 計算用のmarkerを召喚
    execute store result storage asset:temp Args.position double 0.01 run scoreboard players get @s Asset.Actor.Bicycle.Acceleration
    function asset:actor/bicycle/listener/on_tick/player/riding/back/summon with storage asset:temp Args

# Posを取得
    data modify storage asset:temp VectorFrom set from entity @e[tag=Asset.Actor.Bicycle.TempEntity0, limit=1] Pos
    data modify storage asset:temp VectorTo set from entity @e[tag=Asset.Actor.Bicycle.TempEntity1, limit=1] Pos

# スコアに代入
    execute store result score #FromX Temp run data get storage asset:temp VectorFrom[0] 100.0
    execute store result score #FromY Temp run data get storage asset:temp VectorFrom[1] 100.0
    execute store result score #FromZ Temp run data get storage asset:temp VectorFrom[2] 100.0
    execute store result score #ToX Temp run data get storage asset:temp VectorTo[0] 100.0
    execute store result score #ToY Temp run data get storage asset:temp VectorTo[1] 100.0
    execute store result score #ToZ Temp run data get storage asset:temp VectorTo[2] 100.0

# Posの差を計算
    scoreboard players operation #ToX Temp -= #FromX Temp
    scoreboard players operation #ToY Temp -= #FromY Temp
    scoreboard players operation #ToZ Temp -= #FromZ Temp

# Collider.Backの位置で実行
    execute positioned as @e[type=minecraft:interaction, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Collider.Back] rotated ~180 ~ run function asset:actor/bicycle/listener/on_tick/player/riding/positioned_as_collider/_

# 当たり判定を考慮した座標を計算
    scoreboard players operation #FromX Temp += #ToX Temp
    scoreboard players operation #FromY Temp += #ToY Temp
    scoreboard players operation #FromZ Temp += #ToZ Temp

# ストレージに代入
    execute store result storage asset:temp VectorFrom[0] double 0.01 run scoreboard players get #FromX Temp
    execute store result storage asset:temp VectorFrom[1] double 0.01 run scoreboard players get #FromY Temp
    execute store result storage asset:temp VectorFrom[2] double 0.01 run scoreboard players get #FromZ Temp

# Posに代入
    data modify entity @e[tag=Asset.Actor.Bicycle.TempEntity0, limit=1] Pos set from storage asset:temp VectorFrom

# Posへテレポート
    execute positioned as @e[tag=Asset.Actor.Bicycle.TempEntity0] run tp @s ~ ~ ~


# リセット
    kill @e[type=minecraft:marker, tag=Asset.Actor.Bicycle.TempEntity]
    data remove storage asset:temp VectorFrom
    data remove storage asset:temp VectorTo
    data remove storage asset:temp Args
    scoreboard players reset #FromX Temp
    scoreboard players reset #FromY Temp
    scoreboard players reset #FromZ Temp
    scoreboard players reset #ToX Temp
    scoreboard players reset #ToY Temp
    scoreboard players reset #ToZ Temp
