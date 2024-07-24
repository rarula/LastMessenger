#> wasd:core/load
#
# load時に実行される
#
# @within tag/function minecraft:load

scoreboard objectives add WASD dummy
scoreboard objectives add WASD.X dummy
scoreboard objectives add WASD.Z dummy

scoreboard players set $-46496 WASD -46496
scoreboard players set $-1 WASD -1
scoreboard players set $360 WASD 360
scoreboard players set $57295 WASD 57295

scoreboard players set $1000 WASD 1000
scoreboard players set $10000 WASD 10000
scoreboard players set $100000 WASD 100000
scoreboard players set $1000000 WASD 1000000
