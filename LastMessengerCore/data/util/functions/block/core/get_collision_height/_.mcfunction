#> util:block/core/get_collision_height/_
#
# @output
#   storage util: out
#       height: float
#
# @within function util:block/get_collision_height

# 下記以外のブロックの場合は高さが1.0fのブロックとして返す
    data modify storage util: out.height set value 1.0f

execute if block ~ ~ ~ #util:non_collision run data modify storage util: out.height set value 0.0f
execute if block ~ ~ ~ #minecraft:slabs[type=top] run data modify storage util: out.height set value 1.0f
execute if block ~ ~ ~ #minecraft:slabs[type=bottom] run data modify storage util: out.height set value 0.5f
execute if block ~ ~ ~ minecraft:snow[layers=1] run data modify storage util: out.height set value 0.12f
execute if block ~ ~ ~ minecraft:snow[layers=2] run data modify storage util: out.height set value 0.24f
execute if block ~ ~ ~ minecraft:snow[layers=3] run data modify storage util: out.height set value 0.36f
execute if block ~ ~ ~ minecraft:snow[layers=4] run data modify storage util: out.height set value 0.50f
execute if block ~ ~ ~ minecraft:snow[layers=5] run data modify storage util: out.height set value 0.64f
execute if block ~ ~ ~ minecraft:snow[layers=6] run data modify storage util: out.height set value 0.76f
execute if block ~ ~ ~ minecraft:snow[layers=7] run data modify storage util: out.height set value 0.88f
