#> util:ray/core/raycast_blocks/get_block_face/_
# @within function util:ray/core/raycast_blocks/_

#>
# @private
    #declare score_holder #Count
    #declare score_holder #707

data modify storage util:temp Input set from storage util: in

execute store result score #Count Util run data get storage util: in.maxDistance 1000
scoreboard players operation #Count Util /= #707 Const
scoreboard players add #Count Util 2
execute store result storage util: in int 1.0 run scoreboard players get #Count Util
function util:ray/pass_through

data modify storage util:temp PassThroughList set from storage util: out
data modify storage util: in set from storage util:temp Input
data remove storage util: out

execute if data storage util:temp PassThroughList[0] run function util:ray/core/raycast_blocks/get_block_face/foreach

data remove storage util:temp PassThroughList
data remove storage util:temp Input

scoreboard players reset #Count Util
