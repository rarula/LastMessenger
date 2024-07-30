#> asset:actor/bicycle/listener/on_tick/player/riding/2.rotate_bicycle
# @within function asset:actor/bicycle/listener/on_tick/player/riding/_

# WとDを押下している -> 右に回転
    execute if entity @s[tag=WASD.W, tag=WASD.D] as @e[type=#animated_java:root, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Root] at @s run tp @s ~ ~ ~ ~7 ~

# WとAを押下している -> 左に回転
    execute if entity @s[tag=WASD.W, tag=WASD.A] as @e[type=#animated_java:root, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Root] at @s run tp @s ~ ~ ~ ~-7 ~

# SとDを押下している -> 右に回転
    execute if entity @s[tag=WASD.S, tag=WASD.D] as @e[type=#animated_java:root, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Root] at @s run tp @s ~ ~ ~ ~-3.5 ~

# SとAを押下している -> 左に回転
    execute if entity @s[tag=WASD.S, tag=WASD.A] as @e[type=#animated_java:root, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Root] at @s run tp @s ~ ~ ~ ~3.5 ~
