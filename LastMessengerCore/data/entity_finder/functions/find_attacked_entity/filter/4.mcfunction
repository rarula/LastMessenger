#> entity_finder:find_attacked_entity/filter/4
# @within function entity_finder:find_attacked_entity/filter/5

execute if entity @a[tag=EntityFinder.FindAttackedEntity.This, advancements={entity_finder:find_attacked_entity={4-0=true}}] if entity @s[tag=EntityFinder.4-0] run function entity_finder:find_attacked_entity/filter/3
execute if entity @a[tag=EntityFinder.FindAttackedEntity.This, advancements={entity_finder:find_attacked_entity={4-1=true}}] if entity @s[tag=EntityFinder.4-1] run function entity_finder:find_attacked_entity/filter/3
