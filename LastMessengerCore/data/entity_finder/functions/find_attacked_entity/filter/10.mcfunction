#> entity_finder:find_attacked_entity/filter/10
# @within function entity_finder:find_attacked_entity/filter/11

execute if entity @a[tag=EntityFinder.FindAttackedEntity.This, advancements={entity_finder:find_attacked_entity={10-0=true}}] if entity @s[tag=EntityFinder.10-0] run function entity_finder:find_attacked_entity/filter/9
execute if entity @a[tag=EntityFinder.FindAttackedEntity.This, advancements={entity_finder:find_attacked_entity={10-1=true}}] if entity @s[tag=EntityFinder.10-1] run function entity_finder:find_attacked_entity/filter/9
