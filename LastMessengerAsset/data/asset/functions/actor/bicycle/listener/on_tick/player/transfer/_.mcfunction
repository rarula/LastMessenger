#> asset:actor/bicycle/listener/on_tick/player/transfer/_
#
# 自転車を乗り換えた時に呼び出される
#
# @within function asset:actor/bicycle/listener/on_tick/player/_

#>
# @private
    #declare tag Asset.Actor.Bicycle.This

#>
# @within function asset:actor/bicycle/listener/on_tick/player/transfer/**
    #declare tag Asset.Actor.Bicycle.TargetBicycle


# 乗り換え前の自転車を構成するエンティティにタグを設定
    tag @s add Asset.Actor.Bicycle.This
    execute as @e[tag=Asset.Actor.Bicycle] if score @s Asset.Actor.Bicycle.Id = @a[tag=Asset.Actor.Bicycle.This, limit=1] Asset.Actor.Bicycle.PreviousId run tag @s add Asset.Actor.Bicycle.TargetBicycle
    tag @s remove Asset.Actor.Bicycle.This

# 乗り換え前の自転車に対する処理
    function asset:actor/bicycle/listener/on_tick/player/transfer/as_previous_bicycle

# リセット
    tag @e[tag=Asset.Actor.Bicycle.TargetBicycle] remove Asset.Actor.Bicycle.TargetBicycle


# 乗り換え後の自転車を構成するエンティティにタグを設定
    tag @s add Asset.Actor.Bicycle.This
    execute as @e[tag=Asset.Actor.Bicycle] if score @s Asset.Actor.Bicycle.Id = @a[tag=Asset.Actor.Bicycle.This, limit=1] Asset.Actor.Bicycle.Id run tag @s add Asset.Actor.Bicycle.TargetBicycle
    tag @s remove Asset.Actor.Bicycle.This

# 乗り換えたプレイヤーに対する処理
    function asset:actor/bicycle/listener/on_tick/player/transfer/as_player

# リセット
    tag @e[tag=Asset.Actor.Bicycle.TargetBicycle] remove Asset.Actor.Bicycle.TargetBicycle
