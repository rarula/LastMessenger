#> asset:actor/bicycle/listener/on_tick/player/riding/positioned_as_collider/_
# @within function
#   asset:actor/bicycle/listener/on_tick/player/riding/forward/_
#   asset:actor/bicycle/listener/on_tick/player/riding/back/_

# Colliderの上側のすべての頂点の位置で実行
    execute positioned ~0.5 ~2.0 ~0.5 run function asset:actor/bicycle/listener/on_tick/player/riding/positioned_as_collider/edge
    execute positioned ~0.5 ~2.0 ~-0.5 run function asset:actor/bicycle/listener/on_tick/player/riding/positioned_as_collider/edge
    execute positioned ~-0.5 ~2.0 ~0.5 run function asset:actor/bicycle/listener/on_tick/player/riding/positioned_as_collider/edge
    execute positioned ~-0.5 ~2.0 ~-0.5 run function asset:actor/bicycle/listener/on_tick/player/riding/positioned_as_collider/edge
