#> asset:actor/bicycle/listener/on_tick/player/dismount/_
#
# 自転車から降りた時に呼び出される
#
# @within function asset:actor/bicycle/listener/on_tick/player/_

#>
# @private
    #declare tag Asset.Actor.Bicycle.This

#>
# @within function asset:actor/bicycle/listener/on_tick/player/dismount/**
    #declare tag Asset.Actor.Bicycle.TargetBicycle


# 自転車を構成するエンティティにタグを設定
    tag @s add Asset.Actor.Bicycle.This
    execute as @e[tag=Asset.Actor.Bicycle] if score @s Asset.Actor.Bicycle.Id = @a[tag=Asset.Actor.Bicycle.This, limit=1] Asset.Actor.Bicycle.Id run tag @s add Asset.Actor.Bicycle.TargetBicycle
    tag @s remove Asset.Actor.Bicycle.This

# 下車したプレイヤーに対する処理
    function asset:actor/bicycle/listener/on_tick/player/dismount/as_player

# 自転車に対する処理
    function asset:actor/bicycle/listener/on_tick/player/dismount/as_bicycle

# リセット
    tag @e[tag=Asset.Actor.Bicycle.TargetBicycle] remove Asset.Actor.Bicycle.TargetBicycle
