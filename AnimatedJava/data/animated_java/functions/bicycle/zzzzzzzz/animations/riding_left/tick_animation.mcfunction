scoreboard players add @s aj.bicycle.animation.riding_left.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.bicycle.animation.riding_left.local_anim_time
function animated_java:bicycle/zzzzzzzz/animations/riding_left/apply_frame_as_root
execute if score @s aj.bicycle.animation.riding_left.local_anim_time matches 24.. run function animated_java:bicycle/zzzzzzzz/animations/riding_left/end