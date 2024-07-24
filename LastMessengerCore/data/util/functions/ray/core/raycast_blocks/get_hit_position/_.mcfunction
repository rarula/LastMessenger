#> util:ray/core/raycast_blocks/get_hit_position/_
# @within function util:ray/core/raycast_blocks/_

#>
# @within function util:ray/core/raycast_blocks/get_hit_position/*
    #declare score_holder #MaxDistance
    #declare score_holder #Distance

execute store result score #MaxDistance Util run data get storage util: in.maxDistance 100.0
scoreboard players set #Distance Util 0
function util:ray/core/raycast_blocks/get_hit_position/approach

scoreboard players reset #Distance Util
scoreboard players reset #MaxDistance Util
