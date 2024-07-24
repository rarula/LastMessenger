#> asset:actor/bicycle/listener/on_tick/player/_
#
# プレイヤーに対する処理
#
# @within function asset:actor/bicycle/listener/on_tick/_

# 自転車を乗り換えた時
    execute if score @s Asset.Actor.Bicycle.PreviousId matches -2147483648..2147483647 unless score @s Asset.Actor.Bicycle.Id = @s Asset.Actor.Bicycle.PreviousId run function asset:actor/bicycle/listener/on_tick/player/transfer/_

# 自転車に乗っているプレイヤーに対する処理
    execute if function asset:actor/bicycle/listener/on_tick/player/is_riding/_ run function asset:actor/bicycle/listener/on_tick/player/riding/_

# 自転車から降りた時
    execute unless function asset:actor/bicycle/listener/on_tick/player/is_riding/_ run function asset:actor/bicycle/listener/on_tick/player/dismount/_


# PreviousId = Id
    execute if score @s Asset.Actor.Bicycle.Id matches -2147483648..2147483647 run scoreboard players operation @s Asset.Actor.Bicycle.PreviousId = @s Asset.Actor.Bicycle.Id
