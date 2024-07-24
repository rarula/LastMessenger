#> entity_finder:find_attacked_entity/filter/0
# @within function entity_finder:find_attacked_entity/filter/1

execute if entity @a[tag=EntityFinder.FindAttackedEntity.This, advancements={entity_finder:find_attacked_entity={0-0=true}}] if entity @s[tag=EntityFinder.0-0] run function entity_finder:find_attacked_entity/found
execute if entity @a[tag=EntityFinder.FindAttackedEntity.This, advancements={entity_finder:find_attacked_entity={0-1=true}}] if entity @s[tag=EntityFinder.0-1] run function entity_finder:find_attacked_entity/found
