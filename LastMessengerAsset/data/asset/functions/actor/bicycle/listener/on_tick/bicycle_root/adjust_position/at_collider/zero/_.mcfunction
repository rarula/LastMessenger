#> asset:actor/bicycle/listener/on_tick/bicycle_root/adjust_position/at_collider/zero/_
# @within function asset:actor/bicycle/listener/on_tick/bicycle_root/adjust_position/at_collider/edge

#>
# @within function asset:actor/bicycle/listener/on_tick/bicycle_root/adjust_position/at_collider/zero/**
    #declare score_holder #CollisionHeight1

# CollisionHeight1 = 0.5ブロック下のブロックの当たり判定の高さ
    execute positioned ~ ~-0.5 ~ run function util:block/get_collision_height
    execute store result score #CollisionHeight1 Temp run data get storage util: out.height 100.0

# CollisionHeight1 != 0 -> do
    execute unless score #CollisionHeight1 Temp matches 0 run function asset:actor/bicycle/listener/on_tick/bicycle_root/adjust_position/at_collider/zero/do

# リセット
    scoreboard players reset #CollisionHeight1 Temp
