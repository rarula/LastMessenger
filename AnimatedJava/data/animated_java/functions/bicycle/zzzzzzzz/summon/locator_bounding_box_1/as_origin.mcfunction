summon minecraft:interaction ~ ~ ~ {Tags:["Bicycle.BoundingBox","aj.bicycle.locator","aj.bicycle.locator.bounding_box_1","aj.new"],height:1.6f,CustomName:"[{\"text\":\"[\",\"color\":\"gray\"},{\"text\":\"AJ\",\"color\":\"aqua\"},\"] \",[\"\",{\"text\":\"bicycle\",\"color\":\"light_purple\"},\".\",{\"text\":\"locatorEntity\",\"color\":\"white\"},\"[\",{\"text\":\"bounding_box_1\",\"color\":\"yellow\"},\"]\"]]"}
execute as @e[type=minecraft:interaction,tag=aj.bicycle.locator.bounding_box_1,tag=aj.new,limit=1,distance=..1] run function animated_java:bicycle/zzzzzzzz/summon/locator_bounding_box_1/as_entity
data modify entity @s Owner set from storage animated_java Owner
data remove storage animated_java Owner