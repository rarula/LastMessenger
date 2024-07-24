execute unless score @s aj.bicycle.rig_loaded = @s aj.bicycle.rig_loaded run function animated_java:bicycle/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:bicycle/zzzzzzzz/animations/tick
function #animated_java:bicycle/on_tick/as_root