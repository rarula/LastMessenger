scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:bicycle/on_summon/as_rig_entities
execute if entity @s[tag=aj.bicycle.bone] run function #animated_java:bicycle/zzzzzzzz/on_summon/as_bones
execute if entity @s[tag=aj.bicycle.locator_origin] run function animated_java:bicycle/zzzzzzzz/summon/as_locator_origins
