#> entity_finder:find_attacked_entity/filter/15
# @within function entity_finder:find_attacked_entity/_

execute if entity @a[tag=EntityFinder.FindAttackedEntity.This, advancements={entity_finder:find_attacked_entity={15-0=true}}] if entity @s[tag=EntityFinder.15-0] run function entity_finder:find_attacked_entity/filter/14
execute if entity @a[tag=EntityFinder.FindAttackedEntity.This, advancements={entity_finder:find_attacked_entity={15-1=true}}] if entity @s[tag=EntityFinder.15-1] run function entity_finder:find_attacked_entity/filter/14
