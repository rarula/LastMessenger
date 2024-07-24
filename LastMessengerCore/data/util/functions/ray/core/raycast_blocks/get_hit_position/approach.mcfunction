#> util:ray/core/raycast_blocks/get_hit_position/approach
# @private
# @within function util:ray/core/raycast_blocks/get_hit_position/_

execute unless block ~ ~ ~ #util:non_collision run function util:ray/core/raycast_blocks/get_hit_position/hit with storage util: in

scoreboard players add #Distance Util 5
execute if block ~ ~ ~ #util:non_collision if score #Distance Util <= #MaxDistance Util positioned ^ ^ ^0.05 run function util:ray/core/raycast_blocks/get_hit_position/approach
