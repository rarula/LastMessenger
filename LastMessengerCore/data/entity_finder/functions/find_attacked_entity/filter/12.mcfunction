#> entity_finder:find_attacked_entity/filter/12
# @within function entity_finder:find_attacked_entity/filter/13

execute if entity @a[tag=EntityFinder.FindAttackedEntity.This, advancements={entity_finder:find_attacked_entity={12-0=true}}] if entity @s[tag=EntityFinder.12-0] run function entity_finder:find_attacked_entity/filter/11
execute if entity @a[tag=EntityFinder.FindAttackedEntity.This, advancements={entity_finder:find_attacked_entity={12-1=true}}] if entity @s[tag=EntityFinder.12-1] run function entity_finder:find_attacked_entity/filter/11
