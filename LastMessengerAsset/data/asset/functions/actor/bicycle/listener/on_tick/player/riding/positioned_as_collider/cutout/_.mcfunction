#> asset:actor/bicycle/listener/on_tick/player/riding/positioned_as_collider/cutout/_
# @within function
#   asset:actor/bicycle/listener/on_tick/player/riding/positioned_as_collider/hit_ray/_
#   asset:actor/bicycle/listener/on_tick/player/riding/positioned_as_collider/no_hit_ray/hit_ray/_
#   asset:actor/bicycle/listener/on_tick/player/riding/positioned_as_collider/no_hit_ray/no_hit_ray/hit_ray

execute if data storage util: out{blockFace:"NORTH"} run scoreboard players set #ToZ Temp 0
execute if data storage util: out{blockFace:"SOUTH"} run scoreboard players set #ToZ Temp 0
execute if data storage util: out{blockFace:"EAST"} run scoreboard players set #ToX Temp 0
execute if data storage util: out{blockFace:"WEST"} run scoreboard players set #ToX Temp 0
