#> wasd:core/api/walking
# @within function wasd:api/walking

#>
# @private
    #declare score_holder $Temp

data modify storage wasd:temp Pos set from entity @s Pos
execute store result score $x WASD run data get storage wasd:temp Pos[0] 100.0
execute store result score $z WASD run data get storage wasd:temp Pos[2] 100.0
data remove storage wasd:temp Pos

scoreboard players operation $Temp WASD.X = $x WASD
scoreboard players operation $Temp WASD.Z = $z WASD
scoreboard players operation $x WASD -= @s WASD.X
scoreboard players operation $z WASD -= @s WASD.Z

function wasd:core/input/_

scoreboard players operation @s WASD.X = $Temp WASD.X
scoreboard players operation @s WASD.Z = $Temp WASD.Z

scoreboard players reset $Temp WASD.X
scoreboard players reset $Temp WASD.Z
