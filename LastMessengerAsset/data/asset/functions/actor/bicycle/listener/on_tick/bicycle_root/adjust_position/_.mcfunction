#> asset:actor/bicycle/listener/on_tick/bicycle_root/adjust_position/_
#
# 自転車のY座標を調整
#
# @within function asset:actor/bicycle/listener/on_tick/bicycle_root/_

#>
# @within function asset:actor/bicycle/listener/on_tick/bicycle_root/adjust_position/**
    #declare score_holder #Min


# OnGroundを解除
    tag @s remove Asset.Actor.Bicycle.Flag.OnGround


# 自転車が降りるべき高さの初期値を設定
    scoreboard players set #Min Temp 50
    scoreboard players operation #Min Temp += @s Asset.Actor.Bicycle.FallAcceleration

# ColliderのY座標に対する処理
    execute at @e[type=minecraft:interaction, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Collider] run function asset:actor/bicycle/listener/on_tick/bicycle_root/adjust_position/at_collider/_

# OnGroundである -> 落下の加速をリセット
    execute if entity @s[tag=Asset.Actor.Bicycle.Flag.OnGround] run scoreboard players set @s Asset.Actor.Bicycle.FallAcceleration 0

# OnGroundでない -> 落下の加速を増加
    execute if entity @s[tag=!Asset.Actor.Bicycle.Flag.OnGround] if score @s Asset.Actor.Bicycle.FallAcceleration matches 0..45 run scoreboard players add @s Asset.Actor.Bicycle.FallAcceleration 5


# 降りるべき高さの分だけ降りる
    execute if score #Min Temp matches 1.. run function asset:actor/bicycle/listener/on_tick/bicycle_root/adjust_position/down/_

# リセット
    scoreboard players reset #Min Temp
