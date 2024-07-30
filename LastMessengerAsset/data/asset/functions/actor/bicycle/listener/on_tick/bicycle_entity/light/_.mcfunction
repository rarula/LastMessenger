#> asset:actor/bicycle/listener/on_tick/bicycle_entity/light/_
#
# 自転車のLightに対する処理
#
# @within function asset:actor/bicycle/listener/on_tick/_

# 消灯
    setblock ~ ~ ~ minecraft:air

# 自身を削除
    kill @s
