#> asset:actor/bicycle/listener/on_tick/player/riding/positioned_as_collider/no_hit_ray/no_hit_ray/_
# @within function asset:actor/bicycle/listener/on_tick/player/riding/positioned_as_collider/no_hit_ray/_

# raycastBlocks()
    data modify storage util: in.callback set value "asset:actor/bicycle/listener/on_tick/player/riding/positioned_as_collider/no_hit_ray/no_hit_ray/hit_ray"
    data modify storage util: in.maxDistance set value 0.45d
    function util:ray/raycast_blocks
