#> entity_finder:find_attacked_entity/filter/6
# @within function entity_finder:find_attacked_entity/filter/7

execute if entity @a[tag=EntityFinder.FindAttackedEntity.This, advancements={entity_finder:find_attacked_entity={6-0=true}}] if entity @s[tag=EntityFinder.6-0] run function entity_finder:find_attacked_entity/filter/5
execute if entity @a[tag=EntityFinder.FindAttackedEntity.This, advancements={entity_finder:find_attacked_entity={6-1=true}}] if entity @s[tag=EntityFinder.6-1] run function entity_finder:find_attacked_entity/filter/5
