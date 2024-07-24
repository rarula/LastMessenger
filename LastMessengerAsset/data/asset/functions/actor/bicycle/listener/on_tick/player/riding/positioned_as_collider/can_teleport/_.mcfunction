#> asset:actor/bicycle/listener/on_tick/player/riding/positioned_as_collider/can_teleport/_
# @within function
#   asset:actor/bicycle/listener/on_tick/player/riding/positioned_as_collider/hit_ray/_
#   asset:actor/bicycle/listener/on_tick/player/riding/positioned_as_collider/no_hit_ray/hit_ray/_
#   asset:actor/bicycle/listener/on_tick/player/riding/positioned_as_collider/no_hit_ray/no_hit_ray/hit_ray

execute unless block ~ ~1.0 ~ #util:non_collision run return 0
execute unless block ~ ~2.0 ~ #util:non_collision run return 0
return 1
