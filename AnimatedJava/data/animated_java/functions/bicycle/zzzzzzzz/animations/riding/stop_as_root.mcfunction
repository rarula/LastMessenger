scoreboard players set @s aj.bicycle.animation.riding.local_anim_time 0
tag @s remove aj.bicycle.animation.riding
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.bicycle.disable_command_keyframes
function animated_java:bicycle/zzzzzzzz/animations/riding/tree/leaf_0
tag @s remove aj.bicycle.disable_command_keyframes