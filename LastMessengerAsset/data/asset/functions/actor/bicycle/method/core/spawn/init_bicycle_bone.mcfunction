#> asset:actor/bicycle/method/core/spawn/init_bicycle_bone
# @within function asset:actor/bicycle/method/core/spawn/_

# デフォルトの色を設定 (7908262)
    data modify entity @s item.tag.display.color set from storage asset:actor in.color

# BicycleBoneとしてタグを設定
    tag @s add Asset.Actor.Bicycle.Entity.BicycleBone

# 初期化済みとしてタグを設定
    tag @s add Asset.Actor.Bicycle.Flag.Initialized2
