#> asset:actor/bicycle/listener/on_tick/bicycle_root/adjust_position/at_collider/_
# @within function asset:actor/bicycle/listener/on_tick/bicycle_root/adjust_position/_

# Colliderの下側のすべての頂点の位置で実行
    execute positioned ~0.5 ~ ~0.5 run function asset:actor/bicycle/listener/on_tick/bicycle_root/adjust_position/at_collider/edge
    execute positioned ~0.5 ~ ~-0.5 run function asset:actor/bicycle/listener/on_tick/bicycle_root/adjust_position/at_collider/edge
    execute positioned ~-0.5 ~ ~0.5 run function asset:actor/bicycle/listener/on_tick/bicycle_root/adjust_position/at_collider/edge
    execute positioned ~-0.5 ~ ~-0.5 run function asset:actor/bicycle/listener/on_tick/bicycle_root/adjust_position/at_collider/edge
