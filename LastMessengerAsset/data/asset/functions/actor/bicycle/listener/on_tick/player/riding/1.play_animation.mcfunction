#> asset:actor/bicycle/listener/on_tick/player/riding/1.play_animation
# @within function asset:actor/bicycle/listener/on_tick/player/riding/_

#>
# @private
    #declare objective aj.anim_time
    #declare objective aj.bicycle.animation.riding_right.local_anim_time
    #declare objective aj.bicycle.animation.riding_left.local_anim_time
    #declare objective aj.bicycle.animation.riding.local_anim_time

#>
# @private
    #declare score_holder #Frame
    #declare score_holder #24


# 現在のフレームを取得
    scoreboard players operation #Frame Temp = @e[type=#animated_java:root, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Root] aj.anim_time

# すべてのアニメーションを一時停止
    execute as @e[type=#animated_java:root, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Root] run function animated_java:bicycle/animations/pause_all


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


# リセット
    scoreboard players reset #Frame Temp
