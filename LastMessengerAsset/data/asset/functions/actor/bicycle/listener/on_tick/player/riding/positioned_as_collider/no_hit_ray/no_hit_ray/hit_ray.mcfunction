#> asset:actor/bicycle/listener/on_tick/player/riding/positioned_as_collider/no_hit_ray/no_hit_ray/hit_ray
# @within function asset:actor/bicycle/listener/on_tick/player/riding/positioned_as_collider/no_hit_ray/no_hit_ray/_

#>
# @private
    #declare score_holder #CollisionHeight
    #declare score_holder #FloorYFloat
    #declare score_holder #FloorY
    #declare score_holder #100


# #CollisionHeight = rayがヒットしたブロックの当たり判定の高さ
    execute positioned ^ ^ ^0.05 run function util:block/get_collision_height
    execute store result score #CollisionHeight Temp run data get storage util: out.height 100.0

# #CollisionHeight += floor(自転車のY座標)
    scoreboard players operation #FloorYFloat Temp = @s Asset.Actor.Bicycle.Y
    scoreboard players operation #FloorYFloat Temp %= #100 Const
    scoreboard players operation #FloorY Temp = @s Asset.Actor.Bicycle.Y
    scoreboard players operation #FloorY Temp -= #FloorYFloat Temp
    scoreboard players operation #CollisionHeight Temp += #FloorY Temp

# #CollisionHeight と Asset.Actor.Bicycle.Y との差を計算
    scoreboard players operation #CollisionHeight Temp -= @s Asset.Actor.Bicycle.Y

# 上にブロックがない -> 自転車のY座標 = max(#ToY, #CollisionHeight)
    execute positioned ^ ^ ^0.05 if function asset:actor/bicycle/listener/on_tick/player/riding/positioned_as_collider/can_teleport/_ if score #ToY Temp < #CollisionHeight Temp run scoreboard players operation #ToY Temp = #CollisionHeight Temp

# 上にブロックがある -> rayがヒットしたブロックの軸方向への移動ベクトルを打ち消す
    execute positioned ^ ^ ^0.05 unless function asset:actor/bicycle/listener/on_tick/player/riding/positioned_as_collider/can_teleport/_ run function asset:actor/bicycle/listener/on_tick/player/riding/positioned_as_collider/cutout/_


# リセット
    scoreboard players reset #CollisionHeight Temp
    scoreboard players reset #FloorYFloat Temp
    scoreboard players reset #FloorY Temp
