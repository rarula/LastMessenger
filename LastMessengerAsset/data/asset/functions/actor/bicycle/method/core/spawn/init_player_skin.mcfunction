#> asset:actor/bicycle/method/core/spawn/init_player_skin
# @within function asset:actor/bicycle/method/core/spawn/_

# IDを割り当て
    scoreboard players operation @s Asset.Actor.Bicycle.Id = #BicycleEntityIndex Global

# 自転車としてタグを設定
    tag @s add Asset.Actor.Bicycle

# PlayerSkinとしてタグを設定
    tag @s add Asset.Actor.Bicycle.Entity.PlayerSkin

# 初期化済みとしてタグを設定
    tag @s add Asset.Actor.Bicycle.Flag.Initialized
