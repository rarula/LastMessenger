#> asset:actor/bicycle/method/core/spawn/init_vehicle
# @within function asset:actor/bicycle/method/core/spawn/_

# IDを割り当て
    scoreboard players operation @s Asset.Actor.Bicycle.Id = #BicycleEntityIndex Global

# 自転車としてタグを設定
    tag @s add Asset.Actor.Bicycle

# Vehicleとしてタグを設定
    tag @s add Asset.Actor.Bicycle.Entity.Vehicle

# 初期化済みとしてタグを設定
    tag @s add Asset.Actor.Bicycle.Flag.Initialized
