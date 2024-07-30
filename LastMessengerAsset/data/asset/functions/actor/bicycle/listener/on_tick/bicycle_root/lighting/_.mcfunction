#> asset:actor/bicycle/listener/on_tick/bicycle_root/lighting/_
#
# ライトが有効な自転車に対する処理
#
# @within function asset:actor/bicycle/listener/on_tick/bicycle_root/_

execute positioned ^ ^ ^1.5 positioned ~ ~1.0 ~ if block ~ ~ ~ #util:air run function asset:actor/bicycle/listener/on_tick/bicycle_root/lighting/set_light_15
execute positioned ^ ^ ^4.5 positioned ~ ~1.0 ~ if block ~ ~ ~ #util:air run function asset:actor/bicycle/listener/on_tick/bicycle_root/lighting/set_light_12
execute positioned ^ ^ ^7.5 positioned ~ ~1.0 ~ if block ~ ~ ~ #util:air run function asset:actor/bicycle/listener/on_tick/bicycle_root/lighting/set_light_10
