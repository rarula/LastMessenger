#> util:ray/core/raycast_blocks/get_hit_position/hit
# @within function util:ray/core/raycast_blocks/get_hit_position/approach

data modify storage util: out.hit set value true

$execute positioned ^ ^ ^-0.05 run function $(callback)
