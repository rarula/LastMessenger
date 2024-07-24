#> entity_finder:find_interacted_entity/filter/3
# @within function entity_finder:find_interacted_entity/filter/4

execute if entity @a[tag=EntityFinder.FindInteractedEntity.This, advancements={entity_finder:find_interacted_entity={3-0=true}}] if entity @s[tag=EntityFinder.3-0] run function entity_finder:find_interacted_entity/filter/2
execute if entity @a[tag=EntityFinder.FindInteractedEntity.This, advancements={entity_finder:find_interacted_entity={3-1=true}}] if entity @s[tag=EntityFinder.3-1] run function entity_finder:find_interacted_entity/filter/2
