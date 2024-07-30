#> asset:actor/bicycle/listener/on_tick/bicycle_root/lighting/_
# @within function asset:actor/bicycle/listener/on_tick/bicycle_root/_

execute positioned ^ ^ ^1.5 positioned ~ ~1.0 ~ if block ~ ~ ~ #util:air run summon minecraft:marker ~ ~ ~ {Tags:["Asset.Actor.Bicycle.Entity.Light"]}
execute positioned ^ ^ ^1.5 positioned ~ ~1.0 ~ if block ~ ~ ~ #util:air run setblock ~ ~ ~ minecraft:light[level=15]
