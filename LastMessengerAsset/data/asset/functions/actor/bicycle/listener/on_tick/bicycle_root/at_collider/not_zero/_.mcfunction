#> asset:actor/bicycle/listener/on_tick/bicycle_root/at_collider/not_zero/_
# @within function asset:actor/bicycle/listener/on_tick/bicycle_root/at_collider/edge

#>
# @private
    #declare score_holder #CollisionHeightClone
    #declare score_holder #CeilYFloatClone
    #declare score_holder #CeilYFloat
    #declare score_holder #CeilY
    #declare score_holder #CurrentY
    #declare score_holder #100


# #Min = min(#Min, currentY - (ceil(currentY) - 100 - #CollisionHeight))
# ceil(currentY)
    scoreboard players operation #CeilYFloat Temp = @s Asset.Actor.Bicycle.Y
    scoreboard players operation #CeilYFloat Temp %= #100 Const
    scoreboard players operation #CeilYFloatClone Temp = #100 Const
    scoreboard players operation #CeilYFloatClone Temp -= #CeilYFloat Temp
    scoreboard players operation #CeilY Temp = @s Asset.Actor.Bicycle.Y
    scoreboard players operation #CeilY Temp += #CeilYFloatClone Temp

# ceil(currentY) - 100 - #CollisionHeight
    scoreboard players operation #CollisionHeightClone Temp = #100 Const
    scoreboard players operation #CollisionHeightClone Temp -= #CollisionHeight Temp
    scoreboard players operation #CeilY Temp -= #CollisionHeightClone Temp

# currentY - (ceil(currentY) - 100 - #CollisionHeight)
    scoreboard players operation #CurrentY Temp = @s Asset.Actor.Bicycle.Y
    scoreboard players operation #CurrentY Temp -= #CeilY Temp

# 最小値を更新 && CurrentY in 0..50 -> OnGroundとして設定
    execute if score #Min Temp > #CurrentY Temp if score #CurrentY Temp matches 0..50 run tag @s add Asset.Actor.Bicycle.Flag.OnGround

# min(#Min, currentY - (ceil(currentY) - 100 - #CollisionHeight))
    execute if score #Min Temp > #CurrentY Temp run scoreboard players operation #Min Temp = #CurrentY Temp

# リセット
    scoreboard players reset #CollisionHeightClone Temp
    scoreboard players reset #CeilYFloatClone Temp
    scoreboard players reset #CeilYFloat Temp
    scoreboard players reset #CeilY Temp
    scoreboard players reset #CurrentY Temp
