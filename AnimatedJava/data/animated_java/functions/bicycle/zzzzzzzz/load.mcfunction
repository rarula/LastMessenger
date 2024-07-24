scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.bicycle.export_version dummy
scoreboard objectives add aj.bicycle.rig_loaded dummy
scoreboard objectives add aj.bicycle.animation.idle.local_anim_time dummy
scoreboard objectives add aj.bicycle.animation.riding.local_anim_time dummy
scoreboard objectives add aj.bicycle.animation.riding_left.local_anim_time dummy
scoreboard objectives add aj.bicycle.animation.riding_right.local_anim_time dummy
scoreboard objectives add aj.bicycle.animation.idle.loop_mode dummy
scoreboard objectives add aj.bicycle.animation.riding.loop_mode dummy
scoreboard objectives add aj.bicycle.animation.riding_left.loop_mode dummy
scoreboard objectives add aj.bicycle.animation.riding_right.loop_mode dummy
scoreboard players set $aj.bicycle.animation.idle aj.id 0
scoreboard players set $aj.bicycle.animation.riding aj.id 1
scoreboard players set $aj.bicycle.animation.riding_left aj.id 2
scoreboard players set $aj.bicycle.animation.riding_right aj.id 3
scoreboard players set $aj.bicycle.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.bicycle.export_version aj.i 515071336
scoreboard players reset * aj.bicycle.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.bicycle.root] run function animated_java:bicycle/zzzzzzzz/on_load