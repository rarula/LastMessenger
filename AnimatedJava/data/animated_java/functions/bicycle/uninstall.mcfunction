scoreboard objectives remove aj.i
scoreboard objectives remove aj.id
scoreboard objectives remove aj.tween_time
scoreboard objectives remove aj.anim_time
scoreboard objectives remove aj.life_time
scoreboard objectives remove aj.bicycle.export_version
scoreboard objectives remove aj.bicycle.rig_loaded
scoreboard objectives remove aj.bicycle.animation.idle.local_anim_time
scoreboard objectives remove aj.bicycle.animation.riding.local_anim_time
scoreboard objectives remove aj.bicycle.animation.riding_left.local_anim_time
scoreboard objectives remove aj.bicycle.animation.riding_right.local_anim_time
scoreboard objectives remove aj.bicycle.animation.idle.loop_mode
scoreboard objectives remove aj.bicycle.animation.riding.loop_mode
scoreboard objectives remove aj.bicycle.animation.riding_left.loop_mode
scoreboard objectives remove aj.bicycle.animation.riding_right.loop_mode
tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},[{"text":"INFO ℹ","color":"green"},{"text":" > ","color":"gray"},{"text":"The bicycle Rig has been uninstalled successfully.\n"},{"text":"Please remove the Rig's functions from the datapack before reloading.","color":"gray"}]]