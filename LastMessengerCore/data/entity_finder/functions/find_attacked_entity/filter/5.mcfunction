#> entity_finder:find_attacked_entity/filter/5
# @within function entity_finder:find_attacked_entity/filter/6

execute if entity @a[tag=EntityFinder.FindAttackedEntity.This, advancements={entity_finder:find_attacked_entity={5-0=true}}] if entity @s[tag=EntityFinder.5-0] run function entity_finder:find_attacked_entity/filter/4
execute if entity @a[tag=EntityFinder.FindAttackedEntity.This, advancements={entity_finder:find_attacked_entity={5-1=true}}] if entity @s[tag=EntityFinder.5-1] run function entity_finder:find_attacked_entity/filter/4
