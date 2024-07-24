#> wasd:core/input/calc_range
# @within function wasd:core/input/_

#>
# @private
    #declare score_holder $ry

#>
# @within function
#   wasd:core/input/calc_range
#   wasd:core/input/atan2
    #declare score_holder $in
    #declare score_holder $in1
    #declare score_holder $out

## debouncing rotation
scoreboard players operation $ry WASD = @s WASD
execute store result score @s WASD run data get entity @s Rotation[0] 1.0

## dir = atan2(Motion[0],Motion[2]) + Rotation[0]
scoreboard players operation $in WASD = $z WASD
scoreboard players operation $in1 WASD = $x WASD
function wasd:core/input/atan2
scoreboard players operation $dir WASD = $out WASD
scoreboard players operation $dir WASD += $ry WASD

## Map angle to the range 0..360
scoreboard players operation $dir WASD %= $360 WASD

## WASD based on dir angle ranges
execute if score $dir WASD matches 023..157 run scoreboard players set $a WASD 1
execute if score $dir WASD matches 112..248 run scoreboard players set $s WASD 1
execute if score $dir WASD matches 203..337 run scoreboard players set $d WASD 1
execute if score $dir WASD matches 293..360 run scoreboard players set $w WASD 1
execute if score $dir WASD matches 000..067 run scoreboard players set $w WASD 1

scoreboard players reset $ry WASD
scoreboard players reset $in WASD
scoreboard players reset $in1 WASD
scoreboard players reset $out WASD
