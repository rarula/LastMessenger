execute if entity @s[tag=aj.bicycle.root] run function animated_java:bicycle/zzzzzzzz/animations/riding_right/resume_as_root
execute if entity @s[tag=!aj.bicycle.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:bicycle/animations/riding_right/resume ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]