#> entity_finder:find_interacted_entity/filter/2
# @within function entity_finder:find_interacted_entity/filter/3

execute if entity @a[tag=EntityFinder.FindInteractedEntity.This, advancements={entity_finder:find_interacted_entity={2-0=true}}] if entity @s[tag=EntityFinder.2-0] run function entity_finder:find_interacted_entity/filter/1
execute if entity @a[tag=EntityFinder.FindInteractedEntity.This, advancements={entity_finder:find_interacted_entity={2-1=true}}] if entity @s[tag=EntityFinder.2-1] run function entity_finder:find_interacted_entity/filter/1