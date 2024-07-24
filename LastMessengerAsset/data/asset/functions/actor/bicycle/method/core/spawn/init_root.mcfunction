#> asset:actor/bicycle/method/core/spawn/init_root
# @within function asset:actor/bicycle/method/core/spawn/_

# Y座標を取得
    execute store result score @s Asset.Actor.Bicycle.Y run data get entity @s Pos[1] 100.0

# 加速を初期化
    scoreboard players set @s Asset.Actor.Bicycle.Acceleration 0

# 落下の加速を初期化
    scoreboard players set @s Asset.Actor.Bicycle.FallAcceleration 0

# IDを割り当て
    scoreboard players operation @s Asset.Actor.Bicycle.Id = #BicycleEntityIndex Global

# 自転車としてタグを設定
    tag @s add Asset.Actor.Bicycle

# Rootとしてタグを設定
    tag @s add Asset.Actor.Bicycle.Entity.Root

# 初期化済みとしてタグを設定
    tag @s add Asset.Actor.Bicycle.Flag.Initialized
