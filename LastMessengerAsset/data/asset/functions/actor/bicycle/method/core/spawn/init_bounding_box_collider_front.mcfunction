#> asset:actor/bicycle/method/core/spawn/init_bounding_box_collider_front
# @within function asset:actor/bicycle/method/core/spawn/_

# CustomNameを初期化
    data merge entity @s {CustomName:'""'}

# EntityFinderを初期化
    function entity_finder:init/_

# IDを割り当て
    scoreboard players operation @s Asset.Actor.Bicycle.Id = #BicycleEntityIndex Global

# 自転車としてタグを設定
    tag @s add Asset.Actor.Bicycle

# BoundingBoxとしてタグを設定
    tag @s add Asset.Actor.Bicycle.Entity.BoundingBox

# Colliderとしてタグを設定
    tag @s add Asset.Actor.Bicycle.Entity.Collider
    tag @s add Asset.Actor.Bicycle.Entity.Collider.Front

# 初期化済みとしてタグを設定
    tag @s add Asset.Actor.Bicycle.Flag.Initialized
