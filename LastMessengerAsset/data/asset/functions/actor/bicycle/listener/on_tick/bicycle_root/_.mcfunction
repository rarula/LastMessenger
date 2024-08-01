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
    #declare tag Asset.Actor.Bicycle.PreviousNotOnGround


# 自転車を構成するエンティティにタグを設定
    tag @s add Asset.Actor.Bicycle.This
    execute as @e[tag=Asset.Actor.Bicycle] if score @s Asset.Actor.Bicycle.Id = @e[tag=Asset.Actor.Bicycle.This, limit=1] Asset.Actor.Bicycle.Id run tag @s add Asset.Actor.Bicycle.TargetBicycle
    tag @s remove Asset.Actor.Bicycle.This


# 自転車のY座標を調整
    function asset:actor/bicycle/listener/on_tick/bicycle_root/adjust_position/_

# 自転車のY座標を取得
    execute store result score @s Asset.Actor.Bicycle.Y run data get entity @s Pos[1] 100.0

# OnGround && PreviousNotOnGround -> 自転車のVehicleの位置を調整
    execute if entity @s[tag=Asset.Actor.Bicycle.Flag.OnGround, tag=Asset.Actor.Bicycle.PreviousNotOnGround] run function asset:actor/bicycle/listener/on_tick/bicycle_root/adjust_vehicle_position/_
    execute if entity @s[tag=Asset.Actor.Bicycle.Flag.OnGround, tag=Asset.Actor.Bicycle.PreviousNotOnGround] run tag @s remove Asset.Actor.Bicycle.PreviousNotOnGround

# !OnGround -> 自転車のVehicleの位置を調整
    execute if entity @s[tag=!Asset.Actor.Bicycle.Flag.OnGround] run function asset:actor/bicycle/listener/on_tick/bicycle_root/adjust_vehicle_position/_
    execute if entity @s[tag=!Asset.Actor.Bicycle.Flag.OnGround] run tag @s add Asset.Actor.Bicycle.PreviousNotOnGround

# ライトが有効な自転車に対する処理
    execute if entity @s[tag=Asset.Actor.Bicycle.Flag.Lighting] run function asset:actor/bicycle/listener/on_tick/bicycle_root/lighting/_


# リセット
    tag @e[tag=Asset.Actor.Bicycle.TargetBicycle] remove Asset.Actor.Bicycle.TargetBicycle
