#> util:ray/core/raycast_blocks/get_block_face/hit
# @within function util:ray/core/raycast_blocks/get_block_face/foreach

execute if data storage util:temp {PassThrough:"+X"} run data modify storage util: out.blockFace set value "WEST"
execute if data storage util:temp {PassThrough:"-X"} run data modify storage util: out.blockFace set value "EAST"
execute if data storage util:temp {PassThrough:"+Y"} run data modify storage util: out.blockFace set value "DOWN"
execute if data storage util:temp {PassThrough:"-Y"} run data modify storage util: out.blockFace set value "UP"
execute if data storage util:temp {PassThrough:"+Z"} run data modify storage util: out.blockFace set value "NORTH"
execute if data storage util:temp {PassThrough:"-Z"} run data modify storage util: out.blockFace set value "SOUTH"

data remove storage util:temp PassThroughList
data remove storage util:temp PassThrough
