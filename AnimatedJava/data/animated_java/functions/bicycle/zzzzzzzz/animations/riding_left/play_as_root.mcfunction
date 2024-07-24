scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.bicycle.animation.riding_left.local_anim_time 0
scoreboard players set @s aj.bicycle.animation.riding_left.loop_mode 0
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:bicycle/zzzzzzzz/animations/riding_left/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.bicycle.animation.riding_left