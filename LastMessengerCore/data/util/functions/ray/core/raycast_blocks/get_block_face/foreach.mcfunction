#> util:ray/core/raycast_blocks/get_block_face/foreach
# @private
# @within function util:ray/core/raycast_blocks/get_block_face/_

execute unless block ~ ~ ~ #util:non_collision run function util:ray/core/raycast_blocks/get_block_face/hit

execute unless data storage util:temp PassThroughList[0] run data remove storage util:temp PassThrough

data modify storage util:temp PassThrough set from storage util:temp PassThroughList[-1]
data remove storage util:temp PassThroughList[-1]

execute if data storage util:temp {PassThrough:"+X"} positioned ~1.0 ~ ~ run function util:ray/core/raycast_blocks/get_block_face/foreach
execute if data storage util:temp {PassThrough:"-X"} positioned ~-1.0 ~ ~ run function util:ray/core/raycast_blocks/get_block_face/foreach
execute if data storage util:temp {PassThrough:"+Y"} positioned ~ ~1.0 ~ run function util:ray/core/raycast_blocks/get_block_face/foreach
execute if data storage util:temp {PassThrough:"-Y"} positioned ~ ~-1.0 ~ run function util:ray/core/raycast_blocks/get_block_face/foreach
execute if data storage util:temp {PassThrough:"+Z"} positioned ~ ~ ~1.0 run function util:ray/core/raycast_blocks/get_block_face/foreach
execute if data storage util:temp {PassThrough:"-Z"} positioned ~ ~ ~-1.0 run function util:ray/core/raycast_blocks/get_block_face/foreach
