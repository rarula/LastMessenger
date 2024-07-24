#> asset:actor/bicycle/listener/on_tick/bicycle_root/down/_
# @private
# @within function asset:actor/bicycle/listener/on_tick/bicycle_root/_

scoreboard players remove #Min Temp 1

execute if score #Min Temp matches 0 run tp @s ~ ~-0.01 ~
execute if score #Min Temp matches 1.. positioned ~ ~-0.01 ~ run function asset:actor/bicycle/listener/on_tick/bicycle_root/down/_
