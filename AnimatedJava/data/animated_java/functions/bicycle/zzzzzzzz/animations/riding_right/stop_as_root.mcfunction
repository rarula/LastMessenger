scoreboard players set @s aj.bicycle.animation.riding_right.local_anim_time 0
tag @s remove aj.bicycle.animation.riding_right
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.bicycle.disable_command_keyframes
function animated_java:bicycle/zzzzzzzz/animations/riding_right/tree/leaf_0
tag @s remove aj.bicycle.disable_command_keyframes