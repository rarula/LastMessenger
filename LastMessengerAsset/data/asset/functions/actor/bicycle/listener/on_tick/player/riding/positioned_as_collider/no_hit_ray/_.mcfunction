#> asset:actor/bicycle/listener/on_tick/player/riding/positioned_as_collider/no_hit_ray/_
# @within function asset:actor/bicycle/listener/on_tick/player/riding/positioned_as_collider/edge

# raycastBlocks()
    data modify storage util: in.callback set value "asset:actor/bicycle/listener/on_tick/player/riding/positioned_as_collider/no_hit_ray/hit_ray/_"
    data modify storage util: in.maxDistance set value 0.45d
    function util:ray/raycast_blocks

# rayがヒットしなかった -> Colliderの下側の頂点の位置で実行
    execute if data storage util: out{hit:false} positioned ~ ~-1.0 ~ run function asset:actor/bicycle/listener/on_tick/player/riding/positioned_as_collider/no_hit_ray/no_hit_ray/_
