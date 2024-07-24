#> util:ray/core/raycast_blocks/_
#
# @input
#   storage util: in
#       callback: string
#       maxDistance: float
#
# @output @callback
#   storage util: out
#       hit: boolean
#       blockFace?: "UP" | "DOWN" | "NORTH" | "SOUTH" | "EAST" | "WEST"
#
# @within function util:ray/raycast_blocks

function util:ray/core/raycast_blocks/get_block_face/_

data modify storage util: out.hit set value false
function util:ray/core/raycast_blocks/get_hit_position/_

data remove storage util: in
