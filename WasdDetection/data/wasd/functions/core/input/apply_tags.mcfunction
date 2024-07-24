#> wasd:core/input/apply_tags
# @within function wasd:core/input/_

## added functionality for those not utilizing perfect organization
tag @s remove WASD.W
tag @s remove WASD.A
tag @s remove WASD.S
tag @s remove WASD.D

execute if score $w WASD matches 1 run tag @s add WASD.W
execute if score $a WASD matches 1 run tag @s add WASD.A
execute if score $s WASD matches 1 run tag @s add WASD.S
execute if score $d WASD matches 1 run tag @s add WASD.D
