#> asset:actor/bicycle/listener/on_tick/bicycle_root/at_collider/edge
# @within function asset:actor/bicycle/listener/on_tick/bicycle_root/at_collider/_

#>
# @within function asset:actor/bicycle/listener/on_tick/bicycle_root/at_collider/**
    #declare score_holder #RootY
    #declare score_holder #CollisionHeight

# CollisionHeight = ブロックの当たり判定の高さ
    function util:block/get_collision_height
    execute store result score #CollisionHeight Temp run data get storage util: out.height 100.0

# CollisionHeight == 0 -> 更に下側で実行
    execute if score #CollisionHeight Temp matches 0 run function asset:actor/bicycle/listener/on_tick/bicycle_root/at_collider/zero/_

# CollisionHeight != 0 -> do
    execute unless score #CollisionHeight Temp matches 0 run function asset:actor/bicycle/listener/on_tick/bicycle_root/at_collider/not_zero/_

# リセット
    data remove storage util: out
    scoreboard players reset #CollisionHeight Temp
