#> asset:actor/bicycle/method/core/spawn/init_bone
# @within function asset:actor/bicycle/method/core/spawn/_

# 補間可能として設定
    data modify entity @s teleport_duration set value 1

# 初期化済みとしてタグを設定
    tag @s add Asset.Actor.Bicycle.Flag.Initialized3
