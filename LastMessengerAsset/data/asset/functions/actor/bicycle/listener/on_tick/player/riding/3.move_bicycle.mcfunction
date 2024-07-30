#> asset:actor/bicycle/listener/on_tick/player/riding/3.move_bicycle
# @within function asset:actor/bicycle/listener/on_tick/player/riding/_

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
