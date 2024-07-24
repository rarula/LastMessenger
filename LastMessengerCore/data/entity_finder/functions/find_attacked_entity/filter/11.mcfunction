#> entity_finder:find_attacked_entity/filter/11
# @within function entity_finder:find_attacked_entity/filter/12

execute if entity @a[tag=EntityFinder.FindAttackedEntity.This, advancements={entity_finder:find_attacked_entity={11-0=true}}] if entity @s[tag=EntityFinder.11-0] run function entity_finder:find_attacked_entity/filter/10
execute if entity @a[tag=EntityFinder.FindAttackedEntity.This, advancements={entity_finder:find_attacked_entity={11-1=true}}] if entity @s[tag=EntityFinder.11-1] run function entity_finder:find_attacked_entity/filter/10
