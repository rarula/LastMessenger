#> wasd:core/api/mounted
# @within function wasd:api/mounted

data modify storage wasd:temp Motion set from entity @s Motion
execute store result score $x WASD run data get storage wasd:temp Motion[0] 1000.0
execute store result score $z WASD run data get storage wasd:temp Motion[2] 1000.0
data remove storage wasd:temp Motion

function wasd:core/input/_
