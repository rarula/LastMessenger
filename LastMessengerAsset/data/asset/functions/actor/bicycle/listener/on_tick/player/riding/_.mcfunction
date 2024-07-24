#> asset:actor/bicycle/listener/on_tick/player/riding/_
#
# 自転車に乗っているプレイヤーに対する処理
#
# @within function asset:actor/bicycle/listener/on_tick/player/_

#>
# @private
    #declare objective aj.anim_time
    #declare objective aj.bicycle.animation.riding_right.local_anim_time
    #declare objective aj.bicycle.animation.riding_left.local_anim_time
    #declare objective aj.bicycle.animation.riding.local_anim_time

#>
# @private
    #declare tag Asset.Actor.Bicycle.This

#>
# @private
    #declare score_holder #24

#>
# @within function asset:actor/bicycle/listener/on_tick/player/riding/**
    #declare tag Asset.Actor.Bicycle.TargetBicycle

#>
# @within function asset:actor/bicycle/listener/on_tick/player/riding/**
    #declare score_holder #Frame


# 自転車を構成するエンティティにタグを設定
    tag @s add Asset.Actor.Bicycle.This
    execute as @e[tag=Asset.Actor.Bicycle] if score @s Asset.Actor.Bicycle.Id = @a[tag=Asset.Actor.Bicycle.This, limit=1] Asset.Actor.Bicycle.Id run tag @s add Asset.Actor.Bicycle.TargetBicycle
    tag @s remove Asset.Actor.Bicycle.This


# 現在のフレームを取得
    scoreboard players operation #Frame Temp = @e[type=#animated_java:root, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Root] aj.anim_time

# すべてのアニメーションを一時停止
    execute as @e[type=#animated_java:root, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Root] run function animated_java:bicycle/animations/pause_all


# WASD検知
    function wasd:api/mounted

# WとDを押下している -> アニメーションをriding_rightに移行
    execute if entity @s[tag=WASD.W, tag=WASD.D] as @e[type=#animated_java:root, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Root] run function animated_java:bicycle/animations/riding_right/resume
    execute if entity @s[tag=WASD.W, tag=WASD.D] as @e[type=#animated_java:root, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Root] run scoreboard players operation @s aj.bicycle.animation.riding_right.local_anim_time = #Frame Temp

# WとAを押下している -> アニメーションをriding_leftに移行
    execute if entity @s[tag=WASD.W, tag=WASD.A] as @e[type=#animated_java:root, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Root] run function animated_java:bicycle/animations/riding_left/resume
    execute if entity @s[tag=WASD.W, tag=WASD.A] as @e[type=#animated_java:root, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Root] run scoreboard players operation @s aj.bicycle.animation.riding_left.local_anim_time = #Frame Temp

# Wのみを押下している -> アニメーションをridingに移行
    execute if entity @s[tag=WASD.W, tag=!WASD.A, tag=!WASD.D] as @e[type=#animated_java:root, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Root] run function animated_java:bicycle/animations/riding/resume
    execute if entity @s[tag=WASD.W, tag=!WASD.A, tag=!WASD.D] as @e[type=#animated_java:root, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Root] run scoreboard players operation @s aj.bicycle.animation.riding.local_anim_time = #Frame Temp

# Wを押下していない -> 慣性で前に移動している -> アニメーションをridingに移行
    execute if entity @s[tag=!WASD.W] as @e[type=#animated_java:root, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Root] if score @s Asset.Actor.Bicycle.Acceleration matches 1..45 run function animated_java:bicycle/animations/riding/resume
    execute if entity @s[tag=!WASD.W] as @e[type=#animated_java:root, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Root] if score @s Asset.Actor.Bicycle.Acceleration matches 1..45 run scoreboard players operation @s aj.bicycle.animation.riding.local_anim_time = #Frame Temp


# SとDを押下している -> アニメーションをriding_rightに移行
    execute if entity @s[tag=WASD.S, tag=WASD.D] as @e[type=#animated_java:root, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Root] run function animated_java:bicycle/animations/riding_right/resume
    execute if entity @s[tag=WASD.S, tag=WASD.D] as @e[type=#animated_java:root, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Root] run scoreboard players operation @s aj.bicycle.animation.riding_right.local_anim_time = #Frame Temp
    execute if entity @s[tag=WASD.S, tag=WASD.D] as @e[type=#animated_java:root, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Root] run scoreboard players remove @s aj.bicycle.animation.riding_right.local_anim_time 2
    execute if entity @s[tag=WASD.S, tag=WASD.D] as @e[type=#animated_java:root, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Root] run scoreboard players operation @s aj.bicycle.animation.riding_right.local_anim_time %= #24 Const

# SとAを押下している -> アニメーションをriding_leftに移行
    execute if entity @s[tag=WASD.S, tag=WASD.A] as @e[type=#animated_java:root, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Root] run function animated_java:bicycle/animations/riding_left/resume
    execute if entity @s[tag=WASD.S, tag=WASD.A] as @e[type=#animated_java:root, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Root] run scoreboard players operation @s aj.bicycle.animation.riding_left.local_anim_time = #Frame Temp
    execute if entity @s[tag=WASD.S, tag=WASD.A] as @e[type=#animated_java:root, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Root] run scoreboard players remove @s aj.bicycle.animation.riding_left.local_anim_time 2
    execute if entity @s[tag=WASD.S, tag=WASD.A] as @e[type=#animated_java:root, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Root] run scoreboard players operation @s aj.bicycle.animation.riding_left.local_anim_time %= #24 Const

# Sのみを押下している -> アニメーションをridingに移行
    execute if entity @s[tag=WASD.S, tag=!WASD.A, tag=!WASD.D] as @e[type=#animated_java:root, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Root] run function animated_java:bicycle/animations/riding/resume
    execute if entity @s[tag=WASD.S, tag=!WASD.A, tag=!WASD.D] as @e[type=#animated_java:root, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Root] run scoreboard players operation @s aj.bicycle.animation.riding.local_anim_time = #Frame Temp
    execute if entity @s[tag=WASD.S, tag=!WASD.A, tag=!WASD.D] as @e[type=#animated_java:root, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Root] run scoreboard players remove @s aj.bicycle.animation.riding.local_anim_time 2
    execute if entity @s[tag=WASD.S, tag=!WASD.A, tag=!WASD.D] as @e[type=#animated_java:root, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Root] run scoreboard players operation @s aj.bicycle.animation.riding.local_anim_time %= #24 Const

# Sのみを押下していない -> 慣性で後ろに移動している -> アニメーションをridingに移行
    execute if entity @s[tag=!WASD.S] as @e[type=#animated_java:root, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Root] if score @s Asset.Actor.Bicycle.Acceleration matches -21..-1 run function animated_java:bicycle/animations/riding/resume
    execute if entity @s[tag=!WASD.S] as @e[type=#animated_java:root, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Root] if score @s Asset.Actor.Bicycle.Acceleration matches -21..-1 run scoreboard players operation @s aj.bicycle.animation.riding.local_anim_time = #Frame Temp
    execute if entity @s[tag=!WASD.S] as @e[type=#animated_java:root, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Root] if score @s Asset.Actor.Bicycle.Acceleration matches -21..-1 run scoreboard players remove @s aj.bicycle.animation.riding.local_anim_time 2
    execute if entity @s[tag=!WASD.S] as @e[type=#animated_java:root, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Root] if score @s Asset.Actor.Bicycle.Acceleration matches -21..-1 run scoreboard players operation @s aj.bicycle.animation.riding.local_anim_time %= #24 Const


# WとDを押下している -> 右に回転
    execute if entity @s[tag=WASD.W, tag=WASD.D] as @e[type=#animated_java:root, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Root] at @s run tp @s ~ ~ ~ ~7 ~

# WとAを押下している -> 左に回転
    execute if entity @s[tag=WASD.W, tag=WASD.A] as @e[type=#animated_java:root, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Root] at @s run tp @s ~ ~ ~ ~-7 ~

# SとDを押下している -> 右に回転
    execute if entity @s[tag=WASD.S, tag=WASD.D] as @e[type=#animated_java:root, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Root] at @s run tp @s ~ ~ ~ ~-3.5 ~

# SとAを押下している -> 左に回転
    execute if entity @s[tag=WASD.S, tag=WASD.A] as @e[type=#animated_java:root, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Root] at @s run tp @s ~ ~ ~ ~3.5 ~


# Wを押下している -> 徐々に前進
    execute if entity @s[tag=WASD.W] as @e[type=#animated_java:root, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Root] if score @s Asset.Actor.Bicycle.Acceleration matches 0..44 run scoreboard players add @s Asset.Actor.Bicycle.Acceleration 3
    execute if entity @s[tag=WASD.W] as @e[type=#animated_java:root, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Root] if score @s Asset.Actor.Bicycle.Acceleration matches 0..45 at @s run function asset:actor/bicycle/listener/on_tick/player/riding/forward/_

# WとSを押下していない -> 慣性を残して停止
    execute if entity @s[tag=!WASD.W] as @e[type=#animated_java:root, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Root] if score @s Asset.Actor.Bicycle.Acceleration matches 1..45 run scoreboard players remove @s Asset.Actor.Bicycle.Acceleration 3
    execute if entity @s[tag=!WASD.W] as @e[type=#animated_java:root, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Root] if score @s Asset.Actor.Bicycle.Acceleration matches 1..45 at @s run function asset:actor/bicycle/listener/on_tick/player/riding/forward/_


# Sを押下している -> 徐々に後退
    execute if entity @s[tag=WASD.S] as @e[type=#animated_java:root, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Root] if score @s Asset.Actor.Bicycle.Acceleration matches -20..0 run scoreboard players remove @s Asset.Actor.Bicycle.Acceleration 3
    execute if entity @s[tag=WASD.S] as @e[type=#animated_java:root, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Root] if score @s Asset.Actor.Bicycle.Acceleration matches -21..0 at @s run function asset:actor/bicycle/listener/on_tick/player/riding/back/_

# WとSを押下していない -> 慣性を残して停止
    execute if entity @s[tag=!WASD.S] as @e[type=#animated_java:root, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Root] if score @s Asset.Actor.Bicycle.Acceleration matches -21..-1 run scoreboard players add @s Asset.Actor.Bicycle.Acceleration 3
    execute if entity @s[tag=!WASD.S] as @e[type=#animated_java:root, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Root] if score @s Asset.Actor.Bicycle.Acceleration matches -21..-1 at @s run function asset:actor/bicycle/listener/on_tick/player/riding/back/_


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

# リセット
    scoreboard players reset #Frame Temp
