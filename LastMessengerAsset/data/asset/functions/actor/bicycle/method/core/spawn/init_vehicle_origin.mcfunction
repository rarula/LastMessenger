#> asset:actor/bicycle/method/core/spawn/init_vehicle_origin
# @within function asset:actor/bicycle/method/core/spawn/_

# 自転車としてタグを設定
    tag @s add Asset.Actor.Bicycle

# VehicleOriginとしてタグを設定
    tag @s add Asset.Actor.Bicycle.Entity.VehicleOrigin

# 初期化済みとしてタグを設定
    tag @s add Asset.Actor.Bicycle.Flag.Initialized