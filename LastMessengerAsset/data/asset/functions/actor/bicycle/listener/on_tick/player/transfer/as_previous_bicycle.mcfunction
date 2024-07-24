#> asset:actor/bicycle/listener/on_tick/player/transfer/as_previous_bicycle
# @within function asset:actor/bicycle/listener/on_tick/player/transfer/_

# 自転車から下車したとしてタグを削除
    tag @e[tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.BoundingBox, tag=Asset.Actor.Bicycle.Flag.Riding] remove Asset.Actor.Bicycle.Flag.Riding

# 自転車の加速をリセット
    scoreboard players set @e[type=#animated_java:root, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Root] Asset.Actor.Bicycle.Acceleration 0

# 自転車のBoundingBoxのサイズを戻す
    execute as @e[type=minecraft:interaction, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.BoundingBox] run data merge entity @s {width: 1.0f, height: 1.6f}

# アニメーションをidleに移行
    execute as @e[type=#animated_java:root, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Root] run function animated_java:bicycle/animations/pause_all
    execute as @e[type=#animated_java:root, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Root] run function animated_java:bicycle/animations/idle/stop
