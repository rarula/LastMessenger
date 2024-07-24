scoreboard players set @s aj.bicycle.animation.riding_left.local_anim_time 0
tag @s remove aj.bicycle.animation.riding_left
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.bicycle.disable_command_keyframes
function animated_java:bicycle/zzzzzzzz/animations/riding_left/tree/leaf_0
tag @s remove aj.bicycle.disable_command_keyframes