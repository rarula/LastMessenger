tp @s ^0 ^0 ^0.81254 ~0 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:bicycle/on_summon/as_locator_entities