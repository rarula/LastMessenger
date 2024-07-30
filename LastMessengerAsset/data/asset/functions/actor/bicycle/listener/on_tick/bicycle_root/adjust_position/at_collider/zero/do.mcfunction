#> asset:actor/bicycle/listener/on_tick/bicycle_root/adjust_position/at_collider/zero/do
# @within function asset:actor/bicycle/listener/on_tick/bicycle_root/adjust_position/at_collider/zero/_

#>
# @private
    #declare score_holder #CollisionHeightClone
    #declare score_holder #FloorYFloat
    #declare score_holder #FloorY
    #declare score_holder #CurrentY
    #declare score_holder #100


# #Min = min(#Min, currentY - (floor(currentY) - 100 - #CollisionHeight1))
# floor(currentY)
    scoreboard players operation #FloorYFloat Temp = @s Asset.Actor.Bicycle.Y
    scoreboard players operation #FloorYFloat Temp %= #100 Const
    scoreboard players operation #FloorY Temp = @s Asset.Actor.Bicycle.Y
    scoreboard players operation #FloorY Temp -= #FloorYFloat Temp

# floor(currentY) - 100 - #CollisionHeight1
    scoreboard players operation #CollisionHeightClone Temp = #100 Const
    scoreboard players operation #CollisionHeightClone Temp -= #CollisionHeight1 Temp
    scoreboard players operation #FloorY Temp -= #CollisionHeightClone Temp

# currentY - (floor(currentY) - 100 - #CollisionHeight1)
    scoreboard players operation #CurrentY Temp = @s Asset.Actor.Bicycle.Y
    scoreboard players operation #CurrentY Temp -= #FloorY Temp

# 最小値を更新 && CurrentY in 0..50 -> OnGroundとして設定
    execute if score #Min Temp > #CurrentY Temp if score #CurrentY Temp matches 0..50 run tag @s add Asset.Actor.Bicycle.Flag.OnGround

# min(#Min, currentY - (floor(currentY) - 100 - #CollisionHeight1))
    execute if score #Min Temp > #CurrentY Temp run scoreboard players operation #Min Temp = #CurrentY Temp

# リセット
    scoreboard players reset #CollisionHeightClone Temp
    scoreboard players reset #FloorYFloat Temp
    scoreboard players reset #FloorY Temp
    scoreboard players reset #CurrentY Temp
