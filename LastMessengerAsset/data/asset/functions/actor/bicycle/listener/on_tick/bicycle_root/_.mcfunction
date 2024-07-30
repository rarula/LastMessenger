#> asset:actor/bicycle/listener/on_tick/bicycle_root/_
#
# 自転車に対する処理
#
# @within function asset:actor/bicycle/listener/on_tick/_

#>
# @private
    #declare tag Asset.Actor.Bicycle.This

#>
# @within function asset:actor/bicycle/listener/on_tick/bicycle_root/**
    #declare tag Asset.Actor.Bicycle.TargetBicycle

#>
# @within function asset:actor/bicycle/listener/on_tick/bicycle_root/**
    #declare score_holder #Min


# 自転車を構成するエンティティにタグを設定
    tag @s add Asset.Actor.Bicycle.This
    execute as @e[tag=Asset.Actor.Bicycle] if score @s Asset.Actor.Bicycle.Id = @e[tag=Asset.Actor.Bicycle.This, limit=1] Asset.Actor.Bicycle.Id run tag @s add Asset.Actor.Bicycle.TargetBicycle
    tag @s remove Asset.Actor.Bicycle.This

# OnGroundを解除
    tag @s remove Asset.Actor.Bicycle.Flag.OnGround


# Colliderの位置に対する処理
    scoreboard players set #Min Temp 50
    scoreboard players operation #Min Temp += @s Asset.Actor.Bicycle.FallAcceleration
    execute at @e[type=minecraft:interaction, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Collider] run function asset:actor/bicycle/listener/on_tick/bicycle_root/at_collider/_

# OnGroundである -> 落下の加速をリセット
    execute if entity @s[tag=Asset.Actor.Bicycle.Flag.OnGround] run scoreboard players set @s Asset.Actor.Bicycle.FallAcceleration 0

# OnGroundでない -> 落下の加速を増加
    execute if entity @s[tag=!Asset.Actor.Bicycle.Flag.OnGround] if score @s Asset.Actor.Bicycle.FallAcceleration matches 0..45 run scoreboard players add @s Asset.Actor.Bicycle.FallAcceleration 5


# 降りるべき高さ分降りる
    execute if score #Min Temp matches 1.. run function asset:actor/bicycle/listener/on_tick/bicycle_root/down/_
    scoreboard players reset #Min Temp

# Y座標を取得
    execute store result score @s Asset.Actor.Bicycle.Y run data get entity @s Pos[1] 100.0


# 照明を使用中の自転車に対する処理
    execute if entity @s[tag=Asset.Actor.Bicycle.Flag.Lighting] run function asset:actor/bicycle/listener/on_tick/bicycle_root/lighting/_


# リセット
    tag @e[tag=Asset.Actor.Bicycle.TargetBicycle] remove Asset.Actor.Bicycle.TargetBicycle
