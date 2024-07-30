#> asset:actor/bicycle/listener/on_tick/player/riding/_
#
# 自転車に乗っているプレイヤーに対する処理
#
# @within function asset:actor/bicycle/listener/on_tick/player/_

#>
# @private
    #declare tag Asset.Actor.Bicycle.This

#>
# @within function asset:actor/bicycle/listener/on_tick/player/riding/**
    #declare tag Asset.Actor.Bicycle.TargetBicycle


# 自転車を構成するエンティティにタグを設定
    tag @s add Asset.Actor.Bicycle.This
    execute as @e[tag=Asset.Actor.Bicycle] if score @s Asset.Actor.Bicycle.Id = @a[tag=Asset.Actor.Bicycle.This, limit=1] Asset.Actor.Bicycle.Id run tag @s add Asset.Actor.Bicycle.TargetBicycle
    tag @s remove Asset.Actor.Bicycle.This

# WASD検知
    function wasd:api/mounted


# 自転車のアニメーションを再生
    function asset:actor/bicycle/listener/on_tick/player/riding/1.play_animation

# 自転車を回転
    function asset:actor/bicycle/listener/on_tick/player/riding/2.rotate_bicycle

# 自転車を移動
    function asset:actor/bicycle/listener/on_tick/player/riding/3.move_bicycle


# TODO: 削除
    title @s times 0 2 0
    title @s title ""
    execute if entity @s[tag=WASD.W, tag=!WASD.A, tag=!WASD.D] run title @s title "↑"
    execute if entity @s[tag=WASD.W, tag=WASD.D, tag=!WASD.A] run title @s title "↗"
    execute if entity @s[tag=WASD.W, tag=WASD.A, tag=!WASD.D] run title @s title "↖"
    execute if entity @s[tag=WASD.D, tag=!WASD.W, tag=!WASD.A] run title @s title "→"
    execute if entity @s[tag=WASD.A, tag=!WASD.W, tag=!WASD.D] run title @s title "←"
    execute if entity @s[tag=WASD.S, tag=WASD.D, tag=!WASD.A] run title @s title "↘"
    execute if entity @s[tag=WASD.S, tag=WASD.A, tag=!WASD.D] run title @s title "↙"
    execute if entity @s[tag=WASD.S, tag=!WASD.A, tag=!WASD.D] run title @s title "↓"

# リセット
    tag @s[tag=WASD.W] remove WASD.W
    tag @s[tag=WASD.A] remove WASD.A
    tag @s[tag=WASD.S] remove WASD.S
    tag @s[tag=WASD.D] remove WASD.D
    tag @e[tag=Asset.Actor.Bicycle.TargetBicycle] remove Asset.Actor.Bicycle.TargetBicycle
