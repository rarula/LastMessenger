#> asset:actor/bicycle/listener/on_interact/mount/as_bicycle
# @within function asset:actor/bicycle/listener/on_interact/mount/_

# 乗車中としてタグを設定
    tag @e[tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.BoundingBox] add Asset.Actor.Bicycle.Flag.Riding

# BoundingBoxのサイズを0に設定
    execute as @e[tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.BoundingBox] run data merge entity @s {width:0.0f, height:0.0f}

# PlayerSkinを更新
    loot replace entity @e[type=#animated_java:bone, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.PlayerSkin, tag=aj.bicycle.bone.head] hotbar.0 loot stable_player_display:head
    loot replace entity @e[type=#animated_java:bone, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.PlayerSkin, tag=aj.bicycle.bone.left_leg] hotbar.0 loot stable_player_display:left_leg
    loot replace entity @e[type=#animated_java:bone, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.PlayerSkin, tag=aj.bicycle.bone.right_leg] hotbar.0 loot stable_player_display:right_leg
    loot replace entity @e[type=#animated_java:bone, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.PlayerSkin, tag=aj.bicycle.bone.torso] hotbar.0 loot stable_player_display:torso
    execute if entity @s[tag=!GlobalPlayerTag.isSlim] run loot replace entity @e[type=#animated_java:bone, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.PlayerSkin, tag=aj.bicycle.bone.left_arm] hotbar.0 loot stable_player_display:left_arm
    execute if entity @s[tag=!GlobalPlayerTag.isSlim] run loot replace entity @e[type=#animated_java:bone, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.PlayerSkin, tag=aj.bicycle.bone.right_arm] hotbar.0 loot stable_player_display:right_arm
    execute if entity @s[tag=GlobalPlayerTag.isSlim] run loot replace entity @e[type=#animated_java:bone, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.PlayerSkin, tag=aj.bicycle.bone.left_arm] hotbar.0 loot stable_player_display:left_arm_slim
    execute if entity @s[tag=GlobalPlayerTag.isSlim] run loot replace entity @e[type=#animated_java:bone, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.PlayerSkin, tag=aj.bicycle.bone.right_arm] hotbar.0 loot stable_player_display:right_arm_slim

# アニメーションをridingに移行
    execute as @e[type=#animated_java:root, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Root] run function animated_java:bicycle/animations/pause_all
    execute as @e[type=#animated_java:root, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Root] run function animated_java:bicycle/animations/riding/stop
