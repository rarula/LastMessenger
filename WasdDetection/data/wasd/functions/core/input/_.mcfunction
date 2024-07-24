#> wasd:core/input/_
# @within function
#   wasd:core/api/mounted
#   wasd:core/api/walking

#>
# @within function wasd:core/input/*
    #declare score_holder $w
    #declare score_holder $a
    #declare score_holder $s
    #declare score_holder $d
    #declare score_holder $dir

scoreboard players set $w WASD 0
scoreboard players set $a WASD 0
scoreboard players set $s WASD 0
scoreboard players set $d WASD 0
scoreboard players set $dir WASD 0

execute if score $z WASD matches 0 if score $x WASD matches 0 run scoreboard players set $dir WASD -999
execute unless score $dir WASD matches -999 run function wasd:core/input/calc_range
function wasd:core/input/apply_tags

scoreboard players reset $w WASD
scoreboard players reset $a WASD
scoreboard players reset $s WASD
scoreboard players reset $d WASD
scoreboard players reset $dir WASD

scoreboard players reset $x WASD
scoreboard players reset $z WASD
